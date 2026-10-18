#!/bin/bash
set -euo pipefail
if [[ $# != 1 ]]; then
    echo "Usage: bash scripts/checks/protoc-host.sh /path/to/protoc" >&2
    exit 2
fi
file "$1"
"$1" --version
