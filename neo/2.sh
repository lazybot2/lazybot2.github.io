#!/bin/sh

sudo i2cdetect -l

sudo pip3 install --upgrade setuptools
sudo pip3 install sh
sudo pip3 install wheel
sudo pip3 install psutil

sudo apt install libc6 libncurses5 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libatk1.0-0 libgdk-pixbuf2.0-0 libglib2.0-0 libfontconfig1 libfreetype6 libgtk-3-0 libusb-1.0-0 libplist3 usbmuxd ideviceinstaller python-imobiledevice libimobiledevice-utils python-plist ifuse libusbmuxd-tools

wget https://apt.lazybot.vip/neo/oled-start -O /usr/local/bin/oled-start

usermod -a ra1nbox -G root
chmod 755 /usr/local/bin/oled-start

sed -i -e '$i \/usr/local/bin/oled-start\n' /etc/rc.local

mkdir /home/ra1nbox/ra1nbox
wget https://apt.lazybot.vip/neo/download32 -O /home/ra1nbox/ra1nbox/update.zip

## wget https://apt.lazybot.vip/neo/download -O /home/ra1nbox/ra1nbox/update.zip

sudo reboot