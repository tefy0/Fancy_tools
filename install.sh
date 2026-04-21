#!/bin/bash
set -e

REPO_URL='https://github.com/tefy0/fancy_tools.git'
SRC_DIR=~/src/fancy_tools
BASHRC=~/.bashrc

add_if_missing() {
    grep -qF "$1" "$BASHRC" || echo "$1" >> "$BASHRC"
}

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
cp "$BASHRC" "$BASHRC.bak.$TIMESTAMP"
echo "Sauvegarde : $BASHRC.bak.$TIMESTAMP"

if [ ! -d "$SRC_DIR" ]; then
    echo "Clonage du dépôt..."
    mkdir -p ~/src
    git clone "$REPO_URL" "$SRC_DIR"
else
    echo "Dépôt déjà présent, clonage ignoré."
fi

add_if_missing "source $SRC_DIR/.aliases"
add_if_missing "source $SRC_DIR/fancy_functions.sh"
add_if_missing 'export PATH="$HOME/bin:$PATH"'

mkdir -p ~/bin
cp "$SRC_DIR/bin/updateFancyTools" ~/bin/updateFancyTools
chmod +x ~/bin/updateFancyTools

echo "Installation terminée ! Lance : source ~/.bashrc"
