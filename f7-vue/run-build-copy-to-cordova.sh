#!/usr/bin/env bash
npm run build-dev
rm -rf ../cordova/www/
cp -R ./www/ ../cordova/www/
cd ../cordova/
cordova run ios
