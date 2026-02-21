#!/bin/zsh
# Deploy Capricorn theme and color snippets to all vaults
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"

typeset -A VAULTS
VAULTS=(
  deep-sea  "$HOME/Capricorn"
  arctic    "$HOME/Documents/Yuma"
  night-owl "$HOME/Vanille Fraise"
  kleja     "$HOME/dev/kleja/kleja-vault"
  acolyte   "$HOME/Documents/Acolyte"
)

for color vault in "${(@kv)VAULTS}"; do
  if [ ! -d "$vault/.obsidian" ]; then
    echo "SKIP $(basename "$vault") (not found)"
    continue
  fi

  # Deploy theme
  mkdir -p "$vault/.obsidian/themes/Capricorn"
  cp "$DIR/theme.css" "$DIR/manifest.json" "$vault/.obsidian/themes/Capricorn/"

  # Deploy color snippet
  mkdir -p "$vault/.obsidian/snippets"
  cp "$DIR/colors/$color.css" "$vault/.obsidian/snippets/colors.css"

  echo "  OK  $(basename "$vault") ← $color"
done
