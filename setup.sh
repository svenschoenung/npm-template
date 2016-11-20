#!/usr/bin/env bash

PROJECT=$1
PID=$$

rm -rf .git
find . -type f -exec sed -i.bak$PID "s/npm-template/$PROJECT/g" {} +
find . -type f -name "*.bak$PID" -exec rm {} +
rm ./setup.sh
