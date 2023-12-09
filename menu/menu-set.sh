#!/bin/bash
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
echo -e "\e[33m │${BICyan}  .::::.  SYSTEM SETING  .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │ ${BICyan}[${BIWhite}1.${BICyan}] Chnge Domain server     "
echo -e "\e[33m │ ${BICyan}[${BIWhite}2.${BICyan}] Change Port server      "
echo -e "\e[33m │ ${BICyan}[${BIWhite}3.${BICyan}] Change Banner server"
echo -e "\e[33m │ ${BICyan}[${BIWhite}4.${BICyan}] Chnge Auto Reboot   "
echo -e "\e[33m │ ${BICyan}[${BIWhite}5.${BICyan}] Install bot tele      "
echo -e "\e[33m │ ${BICyan}[${BIWhite}6.${BICyan}] Speedtest server   "
echo -e "\e[33m │ ${BICyan}[${BIWhite}7.${BICyan}] Restart All Service"
echo -e "\e[33m │ ${BICyan}[${BIWhite}8.${BICyan}] Cek Bandwith"
echo -e "\e[33m │ ${BICyan}[${BIWhite}9.${BICyan}] Update script     "
echo -e "\e[33m │ ${BICyan}[${BIWhite}10${BICyan}] About Script     "
echo -e "\e[33m │ ${BICyan}[${BIWhite}11${BICyan}] Reboot server     "
echo -e "\e[33m │ ${BICyan}[${BIWhite}0.${BICyan}] Back to menu     "
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; add-host ; exit ;;
2) clear ; port-change ; exit ;;
3) clear ; nano /etc/issue.net ; exit ;; #ssh-vpn banner.conf
4) clear ; auto-reboot ; exit ;;
5) clear ; wget https://raw.githubusercontent.com/sasak3/v4/main/xray/xroy.sh && chmod +x xroy.sh && ./xroy.sh ;;
6) clear ; speedtest ; exit ;;
7) clear ; restart ; exit ;;
8) clear ; bw ; exit ;;
9) clear ; update ; exit ;;
10) clear ; about ; exit ;;
11) clear ; reboot ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac
