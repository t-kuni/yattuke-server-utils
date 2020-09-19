#!/bin/sh
source ./config.sh
cd ~/${APP_DIR}
sudo docker pull gcr.io/${IMAGE_NAME}/image:latest \
&& ./../reload-environment.sh \
&& sudo docker image prune -fa \
&& sudo docker container prune -f \
&& sudo docker network prune -f \
&& cd - \
&& echo success deployment!!
