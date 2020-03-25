#!/bin/bash

if [ "$COMMAND" == "app" ]; then
  npm install
  nodemon ./server.js 8080
elif [ "$COMMAND" == "web" ]; then
  if [ ! -f "/app/package.json" ]; then
    npx create-react-app .
  fi
  npm start
fi
