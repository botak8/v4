clear
echo ""
  echo -e "\e[32m      ┌───────────────────────────────────────────────┐\033[0m"
  echo -e "\e[32m   ───│                                               │───\033[0m"
  echo -e "\e[32m   ───│    ┌─┐┬ ┬┌┬┐┌─┐┌─┐┌─┐┬─┐┬┌─┐┌┬┐  ┬  ┬┌┬┐┌─┐   │───\033[0m"
  echo -e "\e[32m   ───│    ├─┤│ │ │ │ │└─┐│  ├┬┘│├─┘ │   │  │ │ ├┤    │───\033[0m"
  echo -e "\e[32m   ───│    ┴ ┴└─┘ ┴ └─┘└─┘└─┘┴└─┴┴   ┴   ┴─┘┴ ┴ └─┘   │───\033[0m"
  echo -e "\e[32m      │\033[0m  \e[33m      HR-vpn (C)https://t.me/HRstores      \033[0m \e[32m │\033[0m"
  echo -e "\e[32m      └───────────────────────────────────────────────┘\033[0m"
  echo -e "\e[36m             Autoscript xray vpn lite (multi port)\033[0m"
  echo -e "\e[36m  Make sure the internet is smooth when installing the script\033[0m"
  echo -e "\e[31m     JANGAN INSTALL SCRIPT INI MENGGUNAKAN KONEKSI VPN!!!\033[0m"
  echo ""
read -n 1 -s -r -p " Tekan enter untuk melanjutkan"
clear
# Install dep
apt install -y wget screen
apt update -y && apt upgrade -y
apt install lolcat -y
gem install lolcat

# Download and run setup.sh
wget -q https://raw.githubusercontent.com/botak8/san/main/getting.sh
chmod +x getting.sh
screen -S install ./getting.sh
