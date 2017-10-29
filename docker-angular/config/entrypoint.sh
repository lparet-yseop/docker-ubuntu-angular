#!/bin/bash

cd /var/www/html

# Install npm packages
if [ -f package.json ]; then
    npm install
else
    echo "You haven't any Angular project in this directory. Please create a volume to plug a project."
    exit
fi

# Build
if [[ -z "${ENVIRONMENT}" ]]; then
    ng build --environment=${ENVIRONMENT}
else
    ng build
fi

echo "/Entrypoint"

# exec next command
exec "$@"