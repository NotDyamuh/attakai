#!/bin/bash

sudo pacman -S --needed --noconfirm base-devel git zsh hyprland kitty rofi waybar swaync qt5-wayland qt6-wayland xorg-xwayland xdg-desktop-portal-hyprland pipewire pipewire-pulse wireplumber jdk17-openjdk polkit-kde-agent

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

yay -S --noconfirm neofetch ttf-jetbrains-mono-nerd swww

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

cp .p10k.zsh ~/.p10k.zsh
cp .zshrc ~/.zshrc

mkdir -p ~/.config
cp -r .config/gtk-3.0 ~/.config/
cp -r .config/hypr ~/.config/
cp -r .config/kitty ~/.config/
cp -r .config/neofetch ~/.config/
cp -r .config/rofi ~/.config/
cp -r .config/wallpapers ~/.config/
cp -r .config/waybar ~/.config/

chsh -s $(which zsh)

swww-daemon & disown

swww img ~/.config/wallpapers/gruvbox.png
