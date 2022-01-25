#!/bin/sh
set -eu

here="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

dir="$1"
if [ ! -d "$dir" ]; then
  echo 'Given path is not a directory!'
  exit 1
fi

find "$dir" -name "*.java" -type f | while read jf; do
  python3 "${here}/delombok.py" "$jf" "$jf"
done
