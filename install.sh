#!/bin/sh

set -eu

BIN_DIR=${HOME}/.local/bin

# Check if the `chezmoi` command is available
if ! chezmoi="$(command -v chezmoi)"; then
  echo "Installing chezmoi..."
  chezmoi=${BIN_DIR}/chezmoi
  sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ${BIN_DIR}
fi

# Set up the dotfiles
echo "Setting up dotfiles..."
${chezmoi} init --apply https://github.com/foogee36/dotx.git

# Check if the `zsh` command is available
if ! command -v zsh >/dev/null; then
  sudo apt-get install -y zsh
  # change default shell for current user
  sudo chsh -s "$(which zsh)"
fi

# Check if the `starship` command is available
if ! starship="$(command -v starship)"; then
  echo "Installing starship..."
  curl -sS https://starship.rs/install.sh | sh -s -- -b ${BIN_DIR}
fi

# Check if the `unzip` command is available
if ! command -v unzip >/dev/null; then
  sudo apt-get install -y unzip
fi

# Install UDEV fonts
echo "Installing UDEV fonts..."
wget https://github.com/yuru7/udev-gothic/releases/download/v2.0.0/UDEVGothic_NF_v2.0.0.zip
unzip -j UDEVGothic_NF_v2.0.0.zip -d ~/.local/share/fonts
