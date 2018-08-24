echo "Current folder: $(pwd)"
make -C /var/www/html/apps2/contacts
apache2-foreground
#php-fpm