#!/bin/sh

cp ./../../front/package.json ./../../front/yarn.lock ./tmp/

cd ./tmp && yarn install;

ln -s /tmp/node_modules /var/app/

yarn start