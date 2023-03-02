# !/bin/bash

reset=$(tput sgr0)
bold=$(tput bold)
yellow=$(tput setaf 3)

clear
echo "${green}${bold}"
echo ""
echo "INSTALLING POSTGRESQL..."
echo ""
echo "${reset}"
sleep 3s

sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
