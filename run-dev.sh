#!/bin/bash

set -e
echo "Current folder: $(pwd)"

cd /var/www/html/apps2/contacts
make
npm install npm-watch
npm-watch


cd /var/www/html/apps2/vueexample
make dev-setup
make build-js
make watch-js &

# Change back into Apache root folder
cd /var/www/html/
apache2-foreground