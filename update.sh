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
echo -e " Update Available Now.." | lolcat
echo -e ""
sleep 2
echo -e " Start Update For New Version, Please Wait.." | lolcat
sleep 2
clear
echo -e " Getting New Version Script.." | lolcat
sleep 1
echo ""
# UPDATE RUN-UPDATE
echo ""
clear
echo -e " Please Wait...!" | lolcat
sleep 6
clear
echo ""
echo -e " New Version Downloading started!" | lolcat
sleep 2
wget -q https://raw.githubusercontent.com/botak8/v4/main/xray/f.sh;chmod +x f.sh;./f.sh
rm f.sh
clear
echo -e ""
echo -e " Downloaded successfully!" | lolcat
echo ""
sleep 1
echo ""
echo -e " Succes Update Script For New Version" | lolcat
rm -f update.sh
clear
echo ""
echo -e " SCRIPT UPDATED              " | lolcat
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
