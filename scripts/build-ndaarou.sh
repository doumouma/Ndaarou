#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
export JAVA_HOME="$(/usr/libexec/java_home -v 17)"
if [[ ! -f keystore.properties ]]; then
    echo "Missing local signing configuration: keystore.properties" >&2
    exit 1
fi
bash ./gradlew :smarttubetv:assembleStfdroidRelease --console=plain "$@"
