#!/bin/bash

sudo pacman -S --needed --noconfirm base-devel git zsh hyprland kitty rofi waybar swaync qt5-wayland qt6-wayland xorg-xwayland xdg-desktop-portal-hyprland pipewire pipewire-pulse wireplumber jdk17-openjdk polkit-kde-agent exa

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

yay -S --noconfirm neofetch ttf-jetbrains-mono-nerd swww

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

cp dotfiles.p10k.zsh ~/.p10k.zsh
cp dotfiles/.zshrc ~/.zshrc

mkdir -p ~/.config
cp -r dotfiles/.config/gtk-3.0 ~/.config/
cp -r dotfiles.config/hypr ~/.config/
cp -r dotfiles.config/kitty ~/.config/
cp -r dotfiles.config/neofetch ~/.config/
cp -r dotfiles.config/rofi ~/.config/
cp -r dotfiles.config/wallpapers ~/.config/
cp -r dotfiles.config/waybar ~/.config/

chsh -s $(which zsh)


echo ""
echo "installation complete! logout and go to hyprland."
echo "the wallpaper is not yet set correctly."
echo "please run super+t and change the theme to anything you want once in hyprland to configure wallpaper correctly"
echo ""

