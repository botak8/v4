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
token=$(cat /etc/token)
id_chat=$(cat /etc/id)
domain=$(cat /etc/xray/domain)
IP=$(wget -qO- ipinfo.io/ip);
date=$(date +"%Y-%m-%d")
time=$(date +'%H:%M:%S')
clear
echo " BACKUP VPS DATA" | lolcat
echo " Mohon Menunggu , Proses Backup sedang berlangsung !!"
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
rm -rf /root/backup
mkdir /root/backup
cp -r /etc/passwd /root/backup/ &> /dev/null
cp -r /etc/group /root/backup/ &> /dev/null
cp -r /etc/shadow /root/backup/ &> /dev/null
cp -r /etc/gshadow /root/backup/ &> /dev/null
cp -r /etc/xray /root/backup/xray &> /dev/null
cp -r /root/nsdomain /root/backup/nsdomain &> /dev/null
cp -r /etc/slowdns /root/backup/slowdns &> /dev/null
cp -r /home/vps/public_html /root/backup/public_html &> /dev/null
cd /root
zip -r $IP-$date.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
}
netfilter-persistent
clear
fun_bar 'res1'
curl -F chat_id="$id_chat" -F document=@"$IP-$date.zip" -F caption="🔰 Save backup data 🔰
➣Domain : $domain
➣IP VPS : $IP
➣Date   : $date
➣Time   : $time WIB
➣Link Backup : $link" https://api.telegram.org/bot$token/sendDocument &> /dev/null

echo -e "
Detail Backup 
==================================
IP VPS        : $IP
Link Backup   : $link
Tanggal       : $date
==================================
" | mail -s "Backup Data" $email
rm -rf /root/backup
rm -rf /root/$IP-$date.zip
clear
echo -e "
Detail Backup 
==================================
IP VPS        : $IP
Link Backup   : $link
Tanggal       : $date
==================================
"
echo "Silahkan save link diatas"
