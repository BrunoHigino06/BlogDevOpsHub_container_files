# /bin/bash

apt update
apt install sudo
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install nginx -y
#### sudo ufw allow 'Nginx Full' -y
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo npm install ghost-cli@latest -g
sudo chmod 775 /var/www/blogdevopshub/
cd /var/www/blogdevopshub/
ghost install <<<<<< ccontinue here after apply the terragrunt