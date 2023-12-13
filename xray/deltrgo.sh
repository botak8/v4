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
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/trojan-go/akun.conf")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
                echo -e " $COLOR1│$NC   \e[33m     • DELETE TROJAN-GO ACOUNT •       ${NC}"
                echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
                echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
                echo -e "$COLOR1 │$NC   \e[33m     • You Dont have any existing clients!"
                echo -e "$COLOR1 └─────────────────────────────────────────┘${NC}" 
                echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
        menu
	fi

	echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
        echo -e " $COLOR1│$NC   \e[33m     • DELETE TROJAN-GO ACOUNT •       ${NC}"
        echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
	echo "   User       Expired  " 
	echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
	grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
CLIENT_NAME=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2-3 | sed -n "${CLIENT_NUMBER}"p)
user=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^### $user $exp/d" /etc/trojan-go/akun.conf
sed -i '/^,"'"$user"'"$/d' /etc/trojan-go/config.json
systemctl restart trojan-go.service
service cron restart
clear
echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC   \e[33m    • DELETE TROJAN-GO ACOUNT •       ${NC}"
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
echo -e "$COLOR1 ┌─────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 │${NC} \e[33m    • Accound Delete Successfully${NC}"
echo -e "$COLOR1 │${NC}"
echo -e "$COLOR1 │${NC} \e[33m    • Client Name : $user ${NC}"
echo -e "$COLOR1 │${NC} \e[33m    • Expired On  : $exp ${NC}"
echo -e "$COLOR1 └─────────────────────────────────────────┘${NC}" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
    fi
