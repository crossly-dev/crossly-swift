#!/usr/bin/env bash
# Compile one Swift client the way a consumer gets it: through the ROOT Package.swift (SwiftPM by git tag), not the
# generator's per-client manifest.
#
#   bash codegen/ci/check-swift.sh <seller|buyer>      (called by check.sh)
#
# seller builds products Crossly, CrosslyWebhooks and CrosslyVapor; buyer builds CrosslyBuyer.
#
# It also writes <Pkg>/Classes/OpenAPIs/CrosslySDKVersion.swift from the podspec the generator versioned, which
# the vendored CrosslyClient.swift reports in its User-Agent. It is part of the output (the release commits it),
# rewritten on every build, like the generator's own files.
set -euo pipefail
dir="${1%/}"
root="$(cd "$(dirname "$0")/../.." && pwd)"
case "$(basename "$dir")" in
  seller) product=Crossly ;;
  buyer) product=CrosslyBuyer ;;
  *) echo "check-swift: unknown client $dir" >&2; exit 2 ;;
esac
echo "::group::check swift $product"
# Both packages, every time: SwiftPM may compile the other library target while building this product.
for pair in seller:Crossly buyer:CrosslyBuyer; do
  part="${pair%%:*}"; name="${pair##*:}"
  pod="$(ls "$root/$part"/*.podspec | head -1)"
  v="$(sed -n "s/^ *s\.version *= *'\(.*\)'.*/\1/p" "$pod" | head -1)"
  [ -n "$v" ] || { echo "check-swift: no s.version in $pod" >&2; exit 1; }
  cat > "$root/$part/$name/Classes/OpenAPIs/CrosslySDKVersion.swift" <<EOF
// Written by codegen/ci/check-swift.sh from $(basename "$pod"): the version CrosslyClient reports as its User-Agent.
enum CrosslySDKVersion {
    static let current = "$v"
}
EOF
  if [ "$name" = "$product" ]; then version="$v"; fi
done
# A 5.4.0 swift5-template defect the current spec trips, fixed on every build like generate-sdks.mjs's dart
# post-step (it belongs there; it does nothing once the output no longer needs it): a parameter whose schema is
# anyOf [string, array of string] is typed `AnyOfstringarray`, a type the template never writes. It becomes
# `[String]`, which covers both shapes on the wire (APIHelper sends an array as repeated query items).
node - "$root" <<'JS'
const fs = require('fs');
const path = require('path');
const root = process.argv[2];
const walk = (d) => fs.readdirSync(d, { withFileTypes: true }).flatMap((e) =>
  e.isDirectory() ? walk(path.join(d, e.name)) : e.name.endsWith('.swift') ? [path.join(d, e.name)] : []);
const files = ['seller', 'buyer'].flatMap((p) => (fs.existsSync(path.join(root, p)) ? walk(path.join(root, p)) : []));
const declared = new Set();
const texts = new Map(files.map((f) => [f, fs.readFileSync(f, 'utf8')]));
for (const t of texts.values()) for (const m of t.matchAll(/\b(?:struct|enum|class|typealias) (\w+)/g)) declared.add(m[1]);
let n = 0;
for (const [f, before] of texts) {
  const t = before.replace(/\bAnyOfstringarray\b/g, (name) => (declared.has(name) ? name : (n++, '[String]')));
  if (t !== before) fs.writeFileSync(f, t);
  for (const m of t.matchAll(/\b(?:AnyOf|OneOf)[A-Za-z0-9]+\b/g)) {
    if (!declared.has(m[0])) console.log(`swift fix-ups: unhandled undefined type ${m[0]} in ${path.relative(root, f)}`);
  }
}
console.log(`swift fix-ups: ${n} undefined AnyOfstringarray type(s) -> [String]`);
JS
cd "$root"
swift --version
swift build --product "$product"
if [ "$product" = Crossly ]; then
  swift build --product CrosslyWebhooks
  swift build --product CrosslyVapor
fi
echo "::endgroup::"
echo "swift $product $version OK"
