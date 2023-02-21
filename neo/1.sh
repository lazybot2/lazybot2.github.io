#!/bin/sh
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install i2c-tools git vim armbian-config python3-dev python3-pil python3-smbus python3-pip python3-serial
sudo armbian-config
Menu System > Hardware > enable i2c0
Save and reboot