#!/usr/bin/env bash
# Check one generated Dart package the way a consumer's first build would, plus the vendored facade.
#
#   bash codegen/ci/check-dart.sh <seller|buyer>      (called by check.sh)
#
# 1. Writes lib/crossly_version.dart from the pubspec the generator versioned (the vendored crossly_client.dart
#    reports it in its User-Agent). It is part of the output (the release commits it), rewritten on every build.
# 2. dart pub get + dart analyze (errors fail; the 5.4.0 template's warnings do not).
# 3. seller: runs the facade selftest against the real generated client and a local stub server.
# 4. dart pub publish --dry-run, reported but not fatal: pub.dev's validation of the generated pubspec.
set -euo pipefail
dir="${1%/}"
root="$(cd "$(dirname "$0")/../.." && pwd)"
pkg="$root/$dir"
cd "$pkg"
echo "::group::check dart $dir"
version="$(sed -n "s/^version: *'\{0,1\}\([^' ]*\)'\{0,1\}.*/\1/p" pubspec.yaml | head -1)"
[ -n "$version" ] || { echo "check-dart: no version in $pkg/pubspec.yaml" >&2; exit 1; }
cat > lib/crossly_version.dart <<EOF
// Written by codegen/ci/check-dart.sh from pubspec.yaml: the version the Crossly facade reports as its User-Agent.
const String crosslySdkVersion = '$version';
EOF
dart --version
dart pub get
dart analyze --no-fatal-warnings
selftest="$root/codegen/integrations/extras/dart/selftest/crossly_selftest.dart"
if [ "$(basename "$dir")" = seller ] && [ -f lib/crossly_client.dart ] && [ -f "$selftest" ]; then
  mkdir -p tool
  cp "$selftest" tool/crossly_selftest.dart
  trap 'rm -f "$pkg/tool/crossly_selftest.dart"; rmdir "$pkg/tool" 2>/dev/null || true' EXIT
  dart run tool/crossly_selftest.dart
fi
echo "::endgroup::"
echo "::group::pub.dev dry run (informational) $dir"
dart pub publish --dry-run || echo "::warning::dart pub publish --dry-run reported problems for $dir (see above)"
echo "::endgroup::"
echo "dart $dir $version OK"
