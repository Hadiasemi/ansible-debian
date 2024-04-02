#!/bin/bash

curl -sS https://starship.rs/install.sh | sh -s -- -y

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Hadiasemi


git clone https://github.com/Hadiasemi/hadi-kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

