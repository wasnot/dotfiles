#!/usr/bin/env fish

ln -snfv ~/dotfiles/fish/config.fish ~/.config/fish/

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher install jethrokuan/z
fisher install jethrokuan/fzf
fisher install decors/fish-ghq
# fisher add FabioAntunes/fish-nvm
