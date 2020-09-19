#!/bin/sh
source ./config.sh
cd ~/${APP_DIR}
git fetch \
&& git checkout refs/tags/$1 \
&& ./../reload-environment.sh \
&& sudo docker image prune -fa \
&& sudo docker container prune -f \
&& sudo docker network prune -f \
&& echo success update environment!!
