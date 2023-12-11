#!/bin/bash
ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
data_ip="https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini"
checking_sc() {
    useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
    if [[ $date_list < $useexp ]]; then
        echo -ne
    else
        echo -e "
        echo -e "                  • AUTOSCRIPT LITE •" | lolcat 
        echo -e "
        echo -e "                   PERMISSION DENIED !" | lolcat
        echo -e "            Your VPS $ipsaya Has been Banned" | lolcat
        echo -e "            Buy access permissions for script" | lolcat
        echo -e "                   Contact Your Admin " | lolcat
        echo -e "            Telegram : https://t.me/heruahmad" | lolcat
        exit
    fi
}
checking_sc
Name=$(curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini | grep $ipsaya | awk '{print $2}')
# =========================================
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear    
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[36m             SYSTEM SETING    \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[36m      1. Cek System Running   \033[0m  "
echo -e "\e[36m      2. Chnge Domain server  \033[0m   "
echo -e "\e[36m      3. Change Banner server\033[0m "
echo -e "\e[36m      4. Chnge Auto Reboot \033[0m  "
echo -e "\e[36m      5. Install udp   \033[0m   "
echo -e "\e[36m      6. Speedtest server  \033[0m "
echo -e "\e[36m      7. Restart All Service  \033[0m  "
echo -e "\e[36m      8. Cek Bandwith  \033[0m  "
echo -e "\e[36m      9. Clear log all service \033[0m  "
echo -e "\e[36m      10. Update script  \033[0m   "
echo -e "\e[36m      11. About Script   \033[0m  "
echo -e "\e[36m      12. Reboot server  \033[0m   "
echo -e "\e[31m      0. Back to menu   \033[0m  "
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo ""
read -p " Select From Options [ 1 - 12 ] : "  opt
echo -e ""
case $opt in
1) clear ; running ; exit ;;
2) clear ; add-host ; exit ;;
3) clear ; nano /etc/issue.net ; exit ;; #ssh-vpn banner.conf
4) clear ; jam ; exit ;;
5) clear ; clear ; wget -load -cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
6) clear ; speedtest ; exit ;;
7) clear ; restart ; exit ;;
8) clear ; bw ; exit ;;
9) clear ; clearcache ; exit ;;
10) clear ; update ; exit ;;
11) clear ; about ; exit ;;
12) clear ; reboot ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac
