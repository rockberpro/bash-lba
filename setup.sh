#!/bin/bash

set -e

ALIASES_URL="https://raw.githubusercontent.com/rockberpro/bash-lba/main/bash-lba.sh"
INSTALL_PATH="$HOME/.bash-lba.sh"

HELP_URL="https://raw.githubusercontent.com/rockberpro/bash-lba/main/bash-lba-help.sh"
HELP_PATH="$HOME/.bash-lba-help.sh"

curl -sL "$ALIASES_URL" -o "$INSTALL_PATH"

BASHRC="${BASHRC:-$HOME/.bashrc}"

if ! grep -qF "source $INSTALL_PATH" "$BASHRC" 2>/dev/null; then
    echo "" >> "$BASHRC"
    echo "source $INSTALL_PATH" >> "$BASHRC"
fi

curl -sL "$HELP_URL" -o "$HELP_PATH"
chmod +x "$HELP_PATH"

echo "bash-lba installed: $INSTALL_PATH"
echo "bash-lba help installed: $HELP_PATH"
echo "Run 'source ~/.bashrc' or open a new terminal to activate."
