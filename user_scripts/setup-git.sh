#!/bin/bash

set -e 

git config --global user.name "shawn Wang"
git config --global user.email shaobin2010@163.com

git config --global push.default simple
git config --global credential.helper store

echo "Done"
exit 0
