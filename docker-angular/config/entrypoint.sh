#!/bin/bash

cd /var/www/html

# Install npm packages
npm install

# Build 
ng build

echo "/Entrypoint"

# exec next command
exec "$@"