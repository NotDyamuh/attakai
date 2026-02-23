#!/usr/bin/env bash

export RUNZSH=no   # prevents auto-launch and overwriting .zshrc
export CHSH=no     # prevents changing your default shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

echo "✅ Installation complete"
