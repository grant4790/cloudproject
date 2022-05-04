#!/bin/bash
# Install Prerequisites 
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt upgrade -y

sudo apt install docker -y
sudo apt install docker-compose -y
sudo systemctl enable docker

# Download and run sample docker compose file
git clone "https://github.com/boschkundendienst/guacamole-docker-compose.git"
cd guacamole-docker-compose
sudo bash prepare.sh
docker-compose up -d

# Checking Web Service Status
echo "Waiting for web services."
until $(curl --output /dev/null --silent --head --fail http://127.0.0.1:80); do
    printf '.'
    sleep 5
done