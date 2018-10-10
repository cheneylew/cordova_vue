#!/usr/bin/env bash
cd vue
npm run build
cd ..
cd cordova
cordova run osx
