#!/usr/bin/env bash
# Rust's replacement for check.sh:   bash codegen/ci/check-rust.sh <seller|buyer>
#
# Finishes the generated crate (crates.io metadata, the vendored client/webhook modules wired in: see
# codegen/integrations/extras/rust/finish.mjs), then checks it with every feature on (axum and actix-web
# extractors included). The hand-written layer's unit tests run on the buyer crate: the code is identical in both,
# and the buyer crate is a fifth the size, so its test build is the cheap one.
set -euo pipefail
dir="$1"
ci="$(cd "$(dirname "$0")" && pwd)"

echo "::group::finish rust $dir"
node "$ci/../integrations/extras/rust/finish.mjs" "$dir"
echo "::endgroup::"

cd "$dir"
if [ "$(basename "$PWD")" = buyer ]; then
  echo "::group::test the hand-written layer in $dir (all features)"
  cargo test -q --lib --all-features -- client:: webhooks_http::
  echo "::endgroup::"
else
  echo "::group::check $dir (all features)"
  cargo check -q --all-features
  echo "::endgroup::"
fi
echo "rust $dir OK"
