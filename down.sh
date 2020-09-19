#!/bin/sh
source ./config.sh
cd ~/${APP_DIR}
sudo docker-compose down
cd -
