sudo pacman -Syu
sudo pacman -S fuse docker git docker-compose
sudo systemctl enable docker 
################################################
sudo pacman -Syu --noconfirm; sudo pacman -S git base-devel npm nodejs nginx certbot --noconfirm
sudo useradd -m builduser && sudo passwd -d builduser && echo 'builduser ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/builduser
sudo -u builduser bash -c 'cd ~; git clone https://aur.archlinux.org/yay-bin.git; cd yay-bin; makepkg -si --noconfirm; cd ..; rm -rf yay-bin;'
################################################
sudo mkdir -p /docker/nextcloud && cd /docker/nextcloud && touch docker-compose.yml
# create the docker compose and edit the passwords
sudo docker-compose up -d # I changed the port to 7001 here


