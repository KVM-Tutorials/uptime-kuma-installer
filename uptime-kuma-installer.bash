#!/usr/bin/env bash

# Colors
RED='\033[1;31m'
NORMAL='\033[0;39m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'


npm install npm -g

git clone https://github.com/louislam/uptime-kuma.git

cd uptime-kuma

npm run setup

npm install pm2 -g && pm2 install pm2-logrotate

pm2 start server/server.js --name uptime-kuma