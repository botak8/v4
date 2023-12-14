#!/bin/bash


# Install dep
apt install -y wget screen
apt update -y && apt upgrade -y
apt install lolcat -y
gem install lolcat

# Download and run setup.sh
wget -q https://raw.githubusercontent.com/botak8/san/main/hr.sh
chmod +x hr.sh
screen -S install ./hr.sh
