#!/usr/bin/env bash
# Usage: ./set_username.sh <github-username>
# Rewrites the GitHub handle, repository, and site URL in _config.yml.
set -euo pipefail
if [ $# -ne 1 ]; then echo "Usage: $0 <github-username>"; exit 1; fi
U="$1"
cd "$(dirname "$0")"
python3 - "$U" <<'PY'
import re, sys, pathlib
u = sys.argv[1]
p = pathlib.Path("_config.yml")
t = p.read_text()
t = re.sub(r'^repository\s*:.*$', f'repository               : "{u}/{u}.github.io"', t, count=1, flags=re.M)
t = re.sub(r'^url\s*:.*$',        f'url                      : "https://{u}.github.io"', t, count=1, flags=re.M)
t = re.sub(r'^(  github\s*):.*$', f'  github           : "{u}"', t, count=1, flags=re.M)
p.write_text(t)
print(f"_config.yml now points at https://{u}.github.io")
PY
