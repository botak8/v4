#!/bin/bash

cd /usr/bin
# menu
wget -O menu "https://raw.githubusercontent.com/botak8/v4/main/menu/menu.sh"
wget -O menu-2 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu2.sh"
wget -O menu-3 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu3.sh"
wget -O running "https://raw.githubusercontent.com/botak8/v4/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/botak8/v4/main/menu/clearcache.sh"
wget -O menu-5 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu5.sh"
wget -O menu-4 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu4.sh"
# menu ssh ovpn
wget -O menu-1 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu1.sh"
wget -O add1 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add1.sh"
wget -O add2 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add2.sh"
wget -O add3 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add3.sh"
wget -O add4 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add4.sh"
wget -O add5 "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/add5.sh"

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
wget -O menu-backup "https://raw.githubusercontent.com/heruahmad1/v4/main/menu/menu-backup.sh"
wget -O backup "https://raw.githubusercontent.com/botak8/v4/main/backup/backup.sh"
wget -O restore "https://raw.githubusercontent.com/botak8/v4/main/backup/restore.sh"
wget -O jam "https://raw.githubusercontent.com/botak8/v4/main/jam.sh"
wget -O bot "https://raw.githubusercontent.com/sasak3/v4/main/xray/xroy.sh" && chmod +x /usr/bin/bot
wget -q -O /usr/bin/lock "https://raw.githubusercontent.com/sasak3/v4/main/ssh/user-lock.sh"
wget -q -O /usr/bin/unlock "https://raw.githubusercontent.com/sasak3/v4/main/ssh/user-unlock.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/botak8/v4/main/update.sh"

chmod +x menu
chmod +x menu1
chmod +x menu2
chmod +x menu3
chmod +x running
chmod +x clearcache
chmod +x menu4
chmod +x menu5

chmod +x add1
chmod +x add2
chmod +x add3
chmod +x add4
chmod +x add5

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
