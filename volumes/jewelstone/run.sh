#!/bin/sh

if ! which curl >/dev/null 2>/dev/null; then
    apk --no-cache add curl
fi

apk --no-cache add tzdata
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
apk --no-cache del tzdata

echo '0 7 * * * /opt/bin/notify.sh' >/var/spool/cron/crontabs/root
echo '0 19 * * * /opt/bin/notify.sh' >>/var/spool/cron/crontabs/root

crond -f -d 2
