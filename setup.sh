# SETUP GIT
git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg"

# VSCODE
sudo pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si
cd ..

# GOOGLE CHROME
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S google-chrome
cd ..

# NODE
sudo pacman -Sy nodejs npm

# GO
sudo pacman -S go
go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1
go install github.com/swaggo/swag/cmd/swag@latest
source /etc/environment && export PATH=$(go env GOPATH)/bin:$PATH

# FLATPACK
sudo pacman -S flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
pacman -Sl multilib

# STEAM
sudo pacman -S steam

# SNAP
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# FLUTTER
snap install flutter --classic

# DISCORD
sudo snap install discord

# DOCKER&COMPOSE
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
pamac install docker-compose

# TELEGRAM
sudo snap install telegram-desktop

# MATTERMOST
sudo snap install mattermost-desktop

# WIREGUARD
sudo pacman -S wireguard-tools

# GKSU
sudo pacman -S gksu
