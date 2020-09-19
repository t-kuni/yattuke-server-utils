#!/bin/sh
source ./config.sh
cd ~/${APP_DIR}
sudo docker-compose up -d --build -V
# キューワーカを再起動する(キャッシュを削除するため)
sudo docker-compose restart queue-worker
cd -
