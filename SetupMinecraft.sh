sudo apt update
sudo apt upgrade

sudo cp minecraftpmmp.service /etc/systemd/system/minecraftpmmp.service
sudo chmod +x /etc/systemd/system/minecraftpmmp.service
sudo systemctl daemon-reload

sudo apt install -y git cmake pkg-config autoconf automake m4 bison libtool libtool-bin g++ re2c
git clone --recursive https://github.com/pmmp/PocketMine-MP.git
cd PocketMine-MP/build/php/
./compile.sh -t aarch64 -l -s -j4
curl -sS https://getcomposer.org/installer | ./bin/php7/bin/php
./bin/php7/bin/php composer.phar install --working-dir=../../
./installer.sh -c -u

echo "开机时是否自动开启Minecraft服务器？ (y/n)"
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    sudo systemctl enable minecraftpmmp.service
else
    sudo systemctl disable minecraftpmmp.service
fi

./start.sh