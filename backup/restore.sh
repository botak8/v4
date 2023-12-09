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
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
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
}
netfilter-persistent
clear
rm -rf /root/backup
rm -f backup.zip
fun_bar 'res1'
echo "  Restore Berhasil!!!" | lolcat
