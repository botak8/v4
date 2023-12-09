#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${BICyan}.::::.  RESTORE DATA VPS  .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""
echo "  Fitur Ini Hanya Dapat Digunakan Sesuai Data Vps Dengan Autoscript Ini"
echo "  Silahkan masukan link file backup data vps anda."
echo "  Anda dapat memeriksanya di email Anda jika Anda menjalankan backup data vps sebelumnya."
read -rp "   Link File: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo "  Start Restore
sleep 2
cd /root/backup
cp passwd /etc/
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
cp chap-secrets /etc/ppp/
cp passwd1 /etc/ipsec.d/passwd
cp -r crot /var/lib/
cp -r sstp /home/
cp -r xray /etc/
cp -r trojan-go /etc/
cp -r shadowsocksr /usr/local/
cp -r public_html /home/vps/
cp crontab /etc/
strt
clear
rm -rf /root/backup
rm -f backup.zip
echo "  Restore Berhasil!!!" | lolcat
