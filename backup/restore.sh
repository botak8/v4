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
figlet "Restore" | lolcat
echo "This Feature Can Only Be Used According To Vps Data With This Autoscript"
echo "Please input link to your vps data backup file."
echo "You can check it on your email if you run backup data vps before."
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
echo -e "[ ${green}INFO${NC} ] Restore berhasil... " 
sleep 0.5
echo -e "[ ${green}INFO${NC} ] Restart all service untuk mengaktipkan akun kembali. " 
sleep 2
echo ""
read -n 1 -s -r -p "Press any key to restart all service"
                echo -e "Restart Begin" | lolcat
                sleep 2
                echo -e "loading......" | lolcat
                sleep 2
                /etc/init.d/ssh restart
                /etc/init.d/dropbear restart
                /etc/init.d/stunnel4 restart
                /etc/init.d/openvpn restart
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                /etc/init.d/nginx restart
                /etc/init.d/squid restart
                echo -e "[ \033[1;36mOK\033[0m ] Restarting xray (via systemctl) "
                systemctl restart xray
                systemctl restart xray.service
                echo -e "[ \033[1;36mOK\033[0m ] Restarting badvpn (via systemctl) "
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
                echo -e "[ \033[1;36mOK\033[0m ] Restart Websocket (via systemctl) "
                systemctl restart sshws.service
                systemctl restart ws-dropbear.service
                systemctl restart ws-stunnel.service
                echo -e "[ \033[1;36mOK\033[0m ] Restart Trojan Go (via systemctl) "
                systemctl restart trojan-go.service 
                echo -e "[ \033[1;32mSUCCES\033[0m ] \e[1;36mRestarted All Service\033[0m"
                read -n 1 -s -r -p "Press any key to back on system menu"
                menu
