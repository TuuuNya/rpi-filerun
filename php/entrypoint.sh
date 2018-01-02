#!/bin/bash

if [ ! -e /usr/share/nginx/html/index.php ];  then
    echo "[FileRun fresh install]"
    unzip /filerun.zip -d /usr/share/nginx/html/
    rm -rf /usr/share/nginx/html/index.html /usr/share/nginx/html/50x.html
    cp /autoconfig.php /usr/share/nginx/html/system/data/
    mkdir -p /user-files/superuser/download/
    /import-db.sh
    curl -o rpi-filerun-install-aria2ng.sh https://gist.githubusercontent.com/Strikersb/a7058f36cfe3b8e57305148f0f140e70/raw/b5dd84fc11b4f5fd29935dd143afe5388cac4918/rpi-filerun-install-aria2ng.sh
    bash rpi-filerun-install-aria2ng.sh
    chmod 777 /usr/share/nginx/html/system/data/temp -R
    chmod 755 -R /usr/share/nginx/html/
    chown www-data:www-data -R /usr/share/nginx/html/
    chmod 755 -R /user-files
    chown www-data:www-data -R /user-files
fi

exec "$@"
