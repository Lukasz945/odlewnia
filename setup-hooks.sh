#!/usr/bin/env bash
#
# Instalacja zabezpieczen repozytorium na tej maszynie.
#
# Uruchom po kazdym `git clone`. Konfiguracja gita NIE jest wersjonowana,
# wiec sama obecnosc katalogu .githooks w repo nie wystarcza - dopoki
# core.hooksPath nie zostanie ustawione, zaden hook sie nie uruchomi.
#
#   ./setup-hooks.sh

set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
cd "$ROOT"

git config core.hooksPath .githooks
chmod +x .githooks/pre-commit
echo "OK  core.hooksPath -> .githooks"

if [ -f .private-patterns.local ]; then
    n=$(grep -cvE '^[[:space:]]*(#|$)' .private-patterns.local || true)
    echo "OK  .private-patterns.local juz istnieje (wzorcow: ${n:-0})"
else
    cat > .private-patterns.local <<'EOF'
# Wzorce wrazliwe - TYLKO LOKALNIE. Plik jest w .gitignore i nigdy nie trafia do repo.
# Jedna linia = jedno wyrazenie regularne (grep -E, bez rozroznienia wielkosci liter).
#
# UZUPELNIJ o wlasne wartosci, np.:
#   nazwa-pracodawcy
#   nazwa-projektu-wewnetrznego
#   nazwisko-wspolpracownika
#
# Uwaga na wzorce, ktore pasuja do wszystkiego (`.*`, `^$`, `Nazwisko|`) -
# hook ostrzeze, ale i tak lepiej ich nie wpisywac.
EOF
    echo "NOWY  .private-patterns.local - utworzony z szablonu, UZUPELNIJ GO"
fi

echo
echo "Weryfikacja:"
echo "  git config --get core.hooksPath   -> $(git config --get core.hooksPath)"
echo "  hook wykonywalny                  -> $([ -x .githooks/pre-commit ] && echo tak || echo NIE)"
echo
echo "Pamietaj: to zabezpieczenie dziala tylko na tej maszynie i da sie je"
echo "ominac przez --no-verify. Kontrola po stronie serwera to Secret scanning"
echo "i Push protection w ustawieniach repozytorium na GitHubie."
