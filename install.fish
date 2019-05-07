#!/usr/bin/env fish

ln -snfv ~/dotfiles/fish/config.fish ~/.config/fish/

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add jethrokuan/z
fisher add jethrokuan/fzf
fisher add FabioAntunes/fish-nvm
