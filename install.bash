echo "bedroomlights" > /etc/hostname
echo "127.0.0.1 bedroomlights" >> /etc/hosts

wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
apt update
apt full-upgrade
apt install -y git-core nginx php php7.2 php7.2-cli php7.2-fpm
cd
git clone git://git.drogon.net/wiringPi
cd wiringPi/
git pull origin
./build
reboot
