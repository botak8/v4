clear
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'
Green="\033[32m"
Red="\033[31m"
WhiteB="\e[5;37m"
BlueCyan="\e[5;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"


echo -e ""
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC \e[33m             • BACKUP MENU •       ${NC}"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e ""
echo -e "$COLOR1 ┌───────────────────────────────────────────────┐\033[0m"
echo -e "$COLOR1 │$NC \e[33m   [1] • BACKUP ${NC}"
echo -e "$COLOR1 │$NC \e[33m   [2] • RESTORE ${NC}"
echo -e "$COLOR1 │$NC \e[33m   [3] • STRT ${NC}"
echo -e "$COLOR1 │$NC \e[33m   [4] • LIMIT SPEED ${NC}"
echo -e "$COLOR1 │$NC \e[33m   [5] • AUTO BACKUP ${NC}"
echo -e "$COLOR1 └───────────────────────────────────────────────┘\033[0m"
echo ""
read -p " Select From Options [ 1 - 5 ] : "  bro
echo -e ""
if [ $bro = 1 ] || [ $bro = 1 ]
then
echo
echo " BACKUP" | lolcat
backup
echo "--------------------------------------------------------"
echo
echo "  Terimakasih sudah menggunakan layanan script HR-vpn"
echo
echo "--------------------------------------------------------"
fi

if [ $bro = 2 ] || [ $bro = 2 ]
then
echo
echo " RESTORE" | lolcat
restore
echo "--------------------------------------------------------"
echo
echo "  Terimakasih sudah menggunakan layanan script HR-vpn"
echo
echo "--------------------------------------------------------"
fi
if [ $bro = 3 ] || [ $bro = 3 ]
then
echo
echo " STRT" | lolcat
strt
echo "--------------------------------------------------------"
echo
echo "  Terimakasih sudah menggunakan layanan script HR-vpn"
echo
echo "--------------------------------------------------------"
fi
if [ $bro = 4 ] || [ $bro = 4 ]
then
echo
echo " LIMIT SPEED" | lolcat
limitspeed
echo "--------------------------------------------------------"
echo
echo "  Terimakasih sudah menggunakan layanan script HR-vpn"
echo
echo "--------------------------------------------------------"
fi

if [ $bro = 5 ] || [ $bro = 5 ]
then
echo
echo " AUTO BACKUP" | lolcat
autobackup
echo "--------------------------------------------------------"
echo
echo "  Terimakasih sudah menggunakan layanan script HR-vpn"
echo
echo "--------------------------------------------------------"
fi
