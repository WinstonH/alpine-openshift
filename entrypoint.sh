#!/bin/sh
php-fpm7
nginx

# generate host keys if not present
ssh-keygen -A
#prepare xauth
touch /root/.Xauthority

/usr/bin/supervisord -c /etc/supervisord.conf
exec "$@"
