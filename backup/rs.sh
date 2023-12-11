#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
#
echo -e "loading......" | lolcat
                sleep 2
                /etc/init.d/ssh restart
                /etc/init.d/dropbear restart
                /etc/init.d/stunnel4 restart
                /etc/init.d/openvpn restart
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                /etc/init.d/nginx restart
                /etc/init.d/squid restart
                echo -e "[ \033[1;36mOK\033[0m ] Restarting xray (via systemctl) "
                systemctl restart xray
                systemctl restart xray.service
                echo -e "[ \033[1;36mOK\033[0m ] Restarting badvpn (via systemctl) "
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
                echo -e "[ \033[1;36mOK\033[0m ] Restart Websocket (via systemctl) "
                systemctl restart sshws.service
                systemctl restart ws-dropbear.service
                systemctl restart ws-stunnel.service
                echo -e "[ \033[1;36mOK\033[0m ] Restart Trojan Go (via systemctl) "
                systemctl restart trojan-go.service 
                exit
