#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`

clear
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan}.::::.  ADD DOMAIN SERVER  .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo ""
read -rp "  🔶 Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\e[33m ────────────────────────────────────\033[0m"
read -n 1 -s -r -p " Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/SIJA/ipvps.conf
echo -e "\e[33m ────────────────────────────────────\033[0m"
echo " Pres enter to renew cert"
echo ""
read -n 1 -s -r -p "Press enter to renew cert"
certv2ray
fi
