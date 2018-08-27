#!/bin/bash

set -e
echo "Current folder: $(pwd)"

if [ -d "/var/www/html/apps2/contacts" ]; then
    cd "/var/www/html/apps2/contacts"
    make
    npm-watch &
fi

if [ -d "/var/www/html/apps2/vueexample" ]; then
    cd "/var/www/html/apps2/vueexample"
    make dev-setup
    make build-js
    make watch-js &
fi

if [ -d "/var/www/html/apps2/deck" ]; then
    cd "/var/www/html/apps2/deck"
    make build-js
    make watch &
fi

# Change back into Apache root folder
cd /var/www/html/
apache2-foreground
