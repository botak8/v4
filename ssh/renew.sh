#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################



clear
echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC   \e[33m     • RENEW SSH OVPN •       ${NC}"
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
echo
read -p "   Username : " User
egrep "^$User" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
read -p "Day Extend : " Days
Today=`date +%s`
Days_Detailed=$(( $Days * 86400 ))
Expire_On=$(($Today + $Days_Detailed))
Expiration=$(date -u --date="1970-01-01 $Expire_On sec GMT" +%Y/%m/%d)
Expiration_Display=$(date -u --date="1970-01-01 $Expire_On sec GMT" '+%d %b %Y')
passwd -u $User
usermod -e  $Expiration $User
egrep "^$User" /etc/passwd >/dev/null
echo -e "$Pass\n$Pass\n"|passwd $User &> /dev/null
clear
echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC   \e[33m     • RENEW SSH OVPN •       ${NC}"
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
echo -e ""
echo -e "    Username   : $User"
echo -e "    Days Added : $Days Days"
echo -e "    Expires on :  $Expiration_Display"
echo -e ""
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
else
clear
echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC   \e[33m     • RENEW SSH OVPN •       ${NC}"
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
echo -e ""
echo -e "   Username Doesnt Exist      "
echo -e ""
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
fi
read -n 1 -s -r -p "Press any key to back on menu"
menu

