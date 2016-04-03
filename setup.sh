#!/usr/bin/env bash

PROJECT=$1

find . -type f -exec sed -i "s/npm-template/$PROJECT/g" {} +
rm -rf .git
rm ./setup.sh
