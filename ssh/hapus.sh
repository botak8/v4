#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################



clear
echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC   \e[33m     • DELETE USER SSH OVPN •       ${NC}"
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
echo ""
read -p "   Username SSH to Delete : " Pengguna

if getent passwd $Pengguna > /dev/null 2>&1; then
        userdel $Pengguna > /dev/null 2>&1
        echo -e "User $Pengguna was removed."
else
        echo -e "Failure: User $Pengguna Not Exist."
fi

read -n 1 -s -r -p "Press any key to back on menu"

menu
