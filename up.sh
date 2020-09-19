#!/bin/sh
source ./config.sh
cd ~/${APP_DIR}
sudo docker-compose up -d
cd -
