#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles..."
echo "Platform: $(uname -s)"

echo "→ Installing universal configs..."
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/nvim" ~/.config/nvim
echo "  ✓ zsh, nvim"

if [[ "$SHELL" != */zsh ]]; then
    echo ""
    echo "→ Changing default shell to zsh..."
    chsh -s "$(which zsh)"
    echo "  ✓ Default shell changed to zsh"
fi

source ~/.zshrc

echo "✓ Done!"
