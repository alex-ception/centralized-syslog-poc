#!/bin/sh

set -e

# Check folder ownership
owner_uid=$(stat -c '%u' /var/www/server1)
owner_gid=$(stat -c '%g' /var/www/server1)

# Check if the /var/www folder is owned by the current www-data user's uid
chown -R www-data:www-data /var/www/server1/var

exec php-fpm7 -F
