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
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC \e[33m             • RESTORE MENU •       ${NC}"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e ""
echo " Fitur Ini Hanya Dapat Digunakan Sesuai Data Vps Dengan Autoscript Ini"
echo " Silahkan masukan link file backup data vps anda."
echo " Anda dapat memeriksanya di email Anda jika Anda menjalankan backup data vps sebelumnya."
read -rp "Link File: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
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
rm -rf /root/backup
rm -f backup.zip
clear
echo -e "[ ${green}INFO${NC} ] VPS Data Restore Complete !"
sleep 2
echo -e "[ ${green}INFO${NC} ] Restart All Service"
sleep 2
clear
read -n 1 -s -r -p "Press any key to back on system menu"
menu
