#!/usr/bin/env bash
set -euo pipefail

if ! command -v python3 >/dev/null 2>&1; then
  echo "python3 nie jest dostępny. Zainstaluj Python 3 i spróbuj ponownie." >&2
  exit 1
fi

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
repo_dir=$(cd "${script_dir}/.." && pwd)
cd "${repo_dir}"

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

# shellcheck disable=SC1091
source ".venv/bin/activate"

python -m pip install -r requirements.txt
python -m PyInstaller --windowed --name "Social Media Panel" app/main.py

cat <<'MESSAGE'
Build zakończony powodzeniem.
Plik aplikacji znajduje się tutaj:
  dist/Social Media Panel.app
Aby dodać do Launchpad, przeciągnij aplikację do katalogu /Applications.
MESSAGE
