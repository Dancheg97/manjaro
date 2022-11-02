git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg"
sudo pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si
cd ..
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S google-chrome
cd ..
sudo pacman -Sy nodejs npm
sudo pacman -S go
go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1
go install github.com/swaggo/swag/cmd/swag@latest
source /etc/environment && export PATH=$(go env GOPATH)/bin:$PATH
sudo pacman -S flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
pacman -Sl multilib
sudo pacman -S steam
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
snap install flutter --classic
sudo snap install discord
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
pamac install docker-compose
sudo snap install telegram-desktop
sudo snap install mattermost-desktop
sudo pacman -S wireguard-tools
sudo pacman -S gksu
