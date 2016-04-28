#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install build-essential libssl-dev curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 5
cd /app/front && npm install
cd /app/back && npm install
