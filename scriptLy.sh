#!/bin/bash

sudo pacman -S git vim kitty zsh neofetch nemo nvidia-settings steam rofi gamemode picom nitrogen papirus-icon-theme polybar lightdm lightdm-gtk-greeter chromium

git clone https://github.com/heltonchristian/dotfiles-ly
cd dotfiles-ly

mv ~/dotfiles-ly/.config/{Picom,bspwm,kitty,neofetch,polybar,sxhkd} ~/.config/
mv ~/dotfiles-ly/.config/{.bashrc,.zshrc,.nvidia-settings-rc} ~/

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

sudo chsh -S /bin/zsh

