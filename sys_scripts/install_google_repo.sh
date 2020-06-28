#!/bin/bash

set -e
mkdir ~/bin

curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo > ~/bin/repo
chmod a+x ~/bin/repo

if [ ! -e ~/.bashrc ]; then
    echo "create .bashrc file"
    touch ~/.bashrc
fi

cat >> ~/.bashrc <<EOF
PATH=~/bin:\$PATH
export REPO_URL="https://mirrors.tuna.tsinghua.edu.cn/git/git-repo"
EOF

echo "Done"
exit 0
