# Git

git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg"

# VSCode

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si

# Chrome

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S google-chrome

# Go

sudo pacman -Syu
sudo pacman -S go

# Node

pacman -S nodejs npm

# Steam

Scroll down inside the file and look for [multilib]. If the [multilib] lines are commented, then remove “#“ in pacman.

```
[multilib]
SigLevel = PackageRequired
Include = /etc/pacman.d/mirrorlist
```

code /etc/pacman.conf
sudo pacman -S flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
pacman -Sl multilib
sudo pacman -Syu
sudo pacman -S steam

# Discord

sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo snap install discord

# Hide top bar

https://extensions.gnome.org/extension/545/hide-top-bar/
