#wget https://github.com/${GitUser}/
GitUser="botak8"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://raw.githubusercontent.com/${GitUser}/v4/main/version )
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(LATEST VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
clear
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/${GitUser}/v4/main/update.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "  New Version Downloading started!" | lolcat
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
cd /usr/bin
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/botak8/v4/main/ssh/usernew.sh"
wget -q -O /usr/bin/auto-reboot "https://raw.githubusercontent.com/botak8/v4/main/menu/auto-reboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/botak8/v4/main/menu/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/botak8/v4/main/ssh/tendang.sh"
wget -q -O /usr/bin/clearcache "https://raw.githubusercontent.com/sasak3/v4/main/menu/clearcache.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/botak8/v4/main/menu/running.sh"
#wget -q -O /usr/bin/cek-trafik "https://raw.githubusercontent.com/arzvpn/Arzv/main/pengaturan/cek-trafik.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/botak8/v4/main/ssh/speedtest_cli.py"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/botak8/v4/main/menu/menu.sh"
wget -q -O /usr/bin/menu-webmin "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-webmin.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/botak8/v4/main/ssh/xp.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/botak8/v4/main/update.sh"
wget -q -O /usr/bin/certv2ray "https://raw.githubusercontent.com/botak8/v4/main/xray/certv2ray.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-set.sh"
wget -q -O /usr/bin/about "https://raw.githubusercontent.com/botak8/v4/main/menu/about.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/botak8/v4/main/backup/menu-backup.sh"
wget -q -O /usr/bin/trial "https://raw.githubusercontent.com/botak8/v4/main/ssh/trial.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/botak8/v4/main/ssh/usernew.sh"
chmod +x /usr/bin/usernew
chmod +x /usr/bin/auto-reboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearcache
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu
chmod +x /usr/bin/menu-webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/certv2ray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/about
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/trial
chmod +x /usr/bin/usernew
}
netfilter-persistent
clear
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/${GitUser}/v4/main/version )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
fun_bar 'res1'
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
esac
