#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
# hapus menu
rm -rf menu
rm -rf menu-ssh
rm -rf usernew
rm -rf trial
rm -rf up
rm -rf genssl
rm -rf slow
rm -rf menu-backup
# download script
cd /usr/bin
# menu
wget -O menu "https://raw.githubusercontent.com/Sandhj/v4/main/menu/menu.sh"
wget -O genssl "https://raw.githubusercontent.com/Andyyuda/ver3/main/ssh/genssl.sh"
wget -O up "https://raw.githubusercontent.com/Sandhj/v4/main/up.sh"
wget -O cf "https://raw.githubusercontent.com/Andyyuda/ver3/main/cf.sh"
wget -O slow "https://raw.githubusercontent.com/Andyyuda/ver3/main/slow.sh"
wget -O usernew "https://raw.githubusercontent.com/Andyyuda/ver3/main/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/Andyyuda/ver3/main/ssh/trial.sh"
wget -O menu-ssh "https://raw.githubusercontent.com/Sandhj/v4/main/menu/menu-ssh.sh"
wget -O menu-backup "https://raw.githubusercontent.com/Sandhj/v4/main/backup/menu-backup.sh"

# chomad
wget -q -O /usr/bin/up "https://raw.githubusercontent.com/Sandhj/v4/main/up.sh" && chmod +x /usr/bin/up
wget -q -O /usr/bin/cf "https://raw.githubusercontent.com/Andyyuda/ver3/main/cf.sh" && chmod +x /usr/bin/cf
wget -q -O /usr/bin/slow "https://raw.githubusercontent.com/Andyyuda/ver3/main/slow.sh" && chmod +x /usr/bin/slow
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Sandhj/v4/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/Sandhj/v4/main/menu/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/Sandhj/v4/main/backup/menu-backup.sh" && chmod +x /usr/bin/menu-backup
chmod +x slow
chmod +x menu-ssh
chmod +x usernew
chmod +x trial
chmod +x menu-backuo
chmod +x genssl
echo -e " [INFO] Update Successfully"
sleep 2
menu
