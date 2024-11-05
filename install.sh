#!/bin/sh

set -eu

# Check if the `chezmoi` command is available
if ! chezmoi="$(command -v chezmoi)"; then
  echo "Installing chezmoi..."
  bin_dir=${HOME}/.local/bin
  chezmoi=${bin_dir}/chezmoi
  sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ${bin_dir}
fi

# Set up the dotfiles
echo "Setting up dotfiles..."
${chezmoi} init https://github.com/foogee36/dotx.git

# Check if the `starship` command is available
if ! starship="$(command -v starship)"; then
  echo "Installing starship..."
  curl -sS https://starship.rs/install.sh | sh
fi
