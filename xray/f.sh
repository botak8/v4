#!/bin/bash

cd /usr/bin
# vmess
wget -O add-ws "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add2.sh" && chmod +x add-ws
wget -O add-vless "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add3.sh" && chmod +x add-vless
wget -O add-tr "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add4.sh" && chmod +x add-tr
wget -O addtrgo "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add5.sh" && chmod +x addtrgo

# menu
wget -O menu "https://raw.githubusercontent.com/botak8/v4/main/menu/menu.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu2.sh"
wget -O menu-vless "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu3.sh"
wget -O running "https://raw.githubusercontent.com/botak8/v4/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/botak8/v4/main/menu/clearcache.sh"
wget -O menu-trgo "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu4.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu5.sh"
# menu ssh ovpn
wget -O menu-ssh "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu-vmess.sh"
wget -O usernew "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add1.sh"

# menu system
wget -O menu-set "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-set.sh"
wget -O add-host "https://raw.githubusercontent.com/botak8/v4/main/ssh/add-host.sh"
wget -O port-change "https://raw.githubusercontent.com/botak8/v4/main/port/port-change.sh"
wget -O certv2ray "https://raw.githubusercontent.com/botak8/v4/main/xray/certv2ray.sh"
wget -O menu-webmin "https://raw.githubusercontent.com/botak8/v4/main/menu/menu-webmin.sh"
wget -O speedtest "https://raw.githubusercontent.com/botak8/v4/main/ssh/speedtest_cli.py"
wget -O about "https://raw.githubusercontent.com/botak8/v4/main/menu/about.sh"
wget -O auto-reboot "https://raw.githubusercontent.com/botak8/v4/main/menu/auto-reboot.sh"
wget -O restart "https://raw.githubusercontent.com/botak8/v4/main/menu/restart.sh"
wget -O bw "https://raw.githubusercontent.com/botak8/v4/main/menu/bw.sh"
# change port
wget -O port-ssl "https://raw.githubusercontent.com/botak8/v4/main/port/port-ssl.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/botak8/v4/main/port/port-ovpn.sh"
wget -O xp "https://raw.githubusercontent.com/botak8/v4/main/ssh/xp.sh"
wget -O acs-set "https://raw.githubusercontent.com/botak8/v4/main/acs-set.sh"
wget -O sshws "https://raw.githubusercontent.com/botak8/v4/main/ssh/sshws.sh"
wget -O status "https://raw.githubusercontent.com/botak8/v4/main/status.sh"
wget -O menu-backup "https://raw.githubusercontent.com/botak8/v4/main/backup/menu-backup.sh"
wget -O backup "https://raw.githubusercontent.com/botak8/v4/main/backup/backup.sh"
wget -O restore "https://raw.githubusercontent.com/botak8/v4/main/backup/restore.sh"
wget -O jam "https://raw.githubusercontent.com/botak8/v4/main/jam.sh"
wget -O bot "https://raw.githubusercontent.com/sasak3/v4/main/xray/xroy.sh" && chmod +x /usr/bin/bot
wget -q -O /usr/bin/lock "https://raw.githubusercontent.com/sasak3/v4/main/ssh/user-lock.sh"
wget -q -O /usr/bin/unlock "https://raw.githubusercontent.com/sasak3/v4/main/ssh/user-unlock.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/botak8/v4/main/update.sh"

chmod +x menu
chmod +x menu-trial
chmod +x menu-vmess
chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan

chmod +x menu-ssh
chmod +x usernew
chmod +x trial
chmod +x renew
chmod +x hapus
chmod +x cek
chmod +x member
chmod +x delete
chmod +x autokill
chmod +x ceklim
chmod +x tendang

chmod +x menu-set
chmod +x menu-domain
chmod +x port-change
chmod +x certv2ray
chmod +x add-host
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restart
chmod +x bw

chmod +x port-ssl
chmod +x port-ovpn

chmod +x xp
chmod +x acs-set
chmod +x sshws
chmod +x status
chmod +x menu-backup
chmod +x backup
chmod +x restore
chmod +x jam
chmod +x /usr/bin/lock
chmod +x /usr/bin/unlock
chmod +x /usr/bin/update

exit
