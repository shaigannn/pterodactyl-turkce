sudo mkdir -p /etc/apt/keyrings
echo "[+] Panel kurulumu için hazırlıklar yapılıyor."
sleep 5
apt install wget
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt update
sudo apt install -y nodejs
npm i -g yarn
cd /var/www/pterodactyl
yarn
echo "[!] Panel kurulumu için hazırlıklar tamamlandı."
sleep 5
cd /var/www/pterodactyl
wget https://shaigannn.com.tr/shell/resources.zip
rm -r resources
unzip resources.zip
rm resources.zip
yarn build:production
echo "[+] Pterodactyl paneliniz için Türkçeleştirme adımları başarıyla tamamlandı!"
