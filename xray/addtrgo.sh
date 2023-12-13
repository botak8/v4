#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\e[33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting

TIMES="10"
CHATID=$(cat /etc/id)
KEY=$(cat /etc/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"

clear
uuid=$(cat /etc/trojan-go/uuid.txt)
source /var/lib/SIJA/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
trgo="$(cat ~/log-install.txt | grep -w "Trojan Go" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
             echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
             echo -e " $COLOR1│$NC   \e[33m     • ADD TROJAN-GO ACOUNT •       ${NC}"
             echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
             echo -e ""
		read -rp "   Username : " -e user
		user_EXISTS=$(grep -w $user /etc/trojan-go/akun.conf | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo -e "   Username ${RED}${user}${NC} Already On VPS Please Choose Another"
                        echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
			exit 1
		fi
	done
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (Days) : " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan-go/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
hariini=`date -d "0 days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan-go/akun.conf
systemctl restart trojan-go.service
link="trojan-go://${uuid}@isi_bug_disini:${trgo}/?sni=${domain}&type=ws&host=${domain}&path=%2Ftrojango#$user"
link1="trojan://${uuid}@isi_bug_disini:${trgo}/?sni=${domain}&type=ws&host=${domain}&path=%2Ftrojango#$user"
clear

trojan1="$(echo $link1 | base64 -w 0)"
trojan2="$(echo $link | base64 -w 0)"

TEXT="
<code>════════════════════════════════════</code>
<code>          🔰 XRAY TROJAN-GO 🔰              </code>
<code>════════════════════════════════════</code>
<code>➣Remarks  : </code> <code>${user}</code>
<code>➣Domain   : </code> <code>${domain}</code>
<code>➣Port TLS : </code> <code>443</code>
<code>➣Port GRPC: </code> <code>443</code>
<code>➣User ID  : </code> <code>${uuid}</code>
<code>➣AlterId  : 0</code>
<code>➣Security : auto</code>
<code>➣Network  : WS or gRPC</code>
<code>➣Path     : </code> <code>/trojango</code>
<code>════════════════════════════════════</code>
<code>➣Link TRGO V2RAYNG :</code> 
<code>${trojan2}</code>
<code>════════════════════════════════════</code>
<code>➣Link TRGO :</code> 
<code>${trojan1}</code>
<code>════════════════════════════════════</code>
<code>📅Expired On : $exp</code>
🌏@HRstores
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

clear
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "\e[37m       🔰 XRAY TROJAN-GO 🔰     ${NC}"
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "Remarks     : ${user}" | tee -a /etc/log-create-user.log
echo -e "Expired On  : $exp" 
echo -e "Host/IP     : ${domain}" 
echo -e "Port        : ${trgo}" " 
echo -e "Key         : ${uuid}" 
echo -e "Path        : /trojango"
echo -e "Created     : $hariini"
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "Link Trojan Go : ${link}" | tee -a /etc/log-create-user.log
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "Link TrGo (v2rayNG) : ${link1}" | tee -a /etc/log-create-user.log
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "\e[37m Premium VPN Auto Script Service${NC}" 
echo "" 
read -n 1 -s -r -p "Press any key to back on menu"

menu
