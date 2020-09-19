#!/bin/sh
source ./config.sh
cd ~/${APP_DIR}
sudo docker-compose exec app sh
cd -
