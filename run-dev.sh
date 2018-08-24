echo "Current folder: $(pwd)"
make -C /usr/src/nextcloud/apps2/contacts
apache2-foreground
#php-fpm