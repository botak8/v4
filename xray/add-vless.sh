#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

TIMES="10"
CHATID=$(cat /etc/id)
KEY=$(cat /etc/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"


clear
source /var/lib/SIJA/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
tls="$(cat ~/log-install.txt | grep -w "Vless TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vless None TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│$NC   \e[33m     • ADD VLESS ACOUNT •       ${NC}"
echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
echo -e ""
		read -rp "   User: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
clear
		echo -e " $COLOR1┌─────────────────────────────────────────┐${NC}"
                echo -e " $COLOR1│$NC   \e[33m     • ADD TROJAN ACOUNT •       ${NC}"
                echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
                echo -e ""
			echo "   A client with the specified name was already created, please choose another name."
			echo ""
                        echo -e " $COLOR1└─────────────────────────────────────────┘${NC}"
			read -n 1 -s -r -p "Press any key to back on menu"
			v2ray-menu
		fi
	done

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vless$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
vlesslink1="vless://${uuid}@${domain}:$tls?path=/vless&security=tls&encryption=none&type=ws#${user}"
vlesslink2="vless://${uuid}@${domain}:$none?path=/vless&encryption=none&type=ws#${user}"
vlesslink3="vless://${uuid}@${domain}:$tls?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=bug.com#${user}"
systemctl restart xray
clear
vless1="$(echo $vlesslink1 | base64 -w 0)"
vless2="$(echo $vlesslink2 | base64 -w 0)"
vless3="$(echo $vlesslink3 | base64 -w 0)"

TEXT="
<code>════════════════════════════════</code>
<code>          🔰 XRAY / VLESS 🔰         </code>
<code>════════════════════════════════</code>
<code>➣Remarks    : </code> <code>${user}</code>
<code>➣Domain     : </code> <code>${domain}</code>
<code>➣Port TLS   : </code> <code>$tls</code>
<code>➣Port NTLS  : </code> <code>$none</code>
<code>➣Port GRPC  : </code> <code>$tls</code>
<code>➣User ID    : </code> <code>${uuid}</code>
<code>➣AlterId    : 0</code>
<code>➣Security   : auto</code>
<code>➣Network    : WS or gRPC</code>
<code>➣Path       : </code> <code>/vless</code>
<code>➣ServiceName: </code> <code>vless-grpc</code>
<code>════════════════════════════════</code>
<code>➣Link TLS   :</code> 
<code>${vlesslink1}</code>
<code>════════════════════════════════</code>
<code>➣Link NTLS  :</code> 
<code>${vlesslink2}</code>
<code>════════════════════════════════</code>
<code>➣Link GRPC  :</code> 
<code>${vlesslink3}</code>
<code>════════════════════════════════</code>
<code>📅Expired On : $exp</code>
🌏 @HRstores
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null


echo -e "\e[33m════════════════════════════════${NC}"
echo -e "\e[37m       🔰 XRAY VLESS 🔰     ${NC}"
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "Remarks       : ${user}" 
echo -e "User Quota    : ${Quota} GB" 
echo -e "Expired On    : $exp" 
echo -e "Domain        : ${domain}" 
echo -e "port TLS      : $tls" 
echo -e "port none TLS : $none"
echo -e "port GRPC     : $tls" 
echo -e "id            : ${uuid}"
echo -e "Encryption    : none" 
echo -e "Network       : ws" 
echo -e "Path          : /vless" 
echo -e "Path          : vless-grpc"  
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "Link TLS :"
echo -e "${vlesslink1}" 
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "Link none TLS : "
echo -e "${vlesslink2}" 
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "Link GRPC : "
echo -e "${vlesslink3}" 
echo -e "\e[33m════════════════════════════════${NC}"
echo -e "\e[37m Premium VPN Auto Script Service${NC}" 
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"

menu

menu
