#!/bin/bash
USERNAME="suayip"
PASSWORD="aposel2904"
sudo useradd -m -s /bin/bash "$USERNAME"
echo "$USERNAME:$PASSWORD" | sudo chpasswd
sudo usermod -aG sudo "$USERNAME"
echo "Test command!"
