#/usr/bin/env sh

set -e

cd /etc/server

if [ -f ./package.json ]; then
  npm i
  if [ $NODE_ENV = "production" ]; then
    node app.js
  else
    nodemon app.js
  fi
else
  echo "Package.json does not  exists"
fi

