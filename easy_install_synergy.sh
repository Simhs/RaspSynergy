#sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get update
sudo apt-get upgrade -f -y --force-yes
sudo apt-get --yes --force-yes install build-essential cmake libavahi-compat-libdnssd-dev libcurl4-openssl-dev libssl-dev python qt4-dev-tools xorg-dev
cd
wget https://github.com/symless/synergy/archive/master.zip
unzip master.zip
cd synergy-master
./hm.sh conf -g1
./hm.sh build
cd bin
sudo cp syn* /usr/local/bin
echo "@/usr/local/bin/synergyc --name pi $1" >> /home/pi/.config/lxsession/LXDE-pi/autostart
sudo reboot
