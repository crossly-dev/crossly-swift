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
pod="$(ls "$root/$dir"/*.podspec | head -1)"
version="$(sed -n "s/^ *s\.version *= *'\(.*\)'.*/\1/p" "$pod" | head -1)"
[ -n "$version" ] || { echo "check-swift: no s.version in $pod" >&2; exit 1; }
cat > "$root/$dir/$product/Classes/OpenAPIs/CrosslySDKVersion.swift" <<EOF
// Written by codegen/ci/check-swift.sh from $(basename "$pod"): the version CrosslyClient reports as its User-Agent.
enum CrosslySDKVersion {
    static let current = "$version"
}
EOF
cd "$root"
swift --version
swift build --product "$product"
if [ "$product" = Crossly ]; then
  swift build --product CrosslyWebhooks
  swift build --product CrosslyVapor
fi
echo "::endgroup::"
echo "swift $product $version OK"
