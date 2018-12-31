#!/bin/bash

set -e 

sudo apt install -y python-pip

sudo pip install virtualenv -i https://pypi.douban.com/simple
sudo pip install virtualenvwrapper -i https://pypi.douban.com/simple

if [ -z $HOME/.virtualenvs ]; then
    mkdir $HOME/.virtualenvs
fi

if [ -z 'cat $HOME/.bashrc | grep WORKON_HOME=' ]; then
    echo 'export WORKON_HOME=$HOME/.virtualenvs' >> $HOME/.bashrc
    echo 'source /usr/local/bin/virtualenvwrapper.sh' >> $HOME/.bashrc
fi

echo "Done"
exit 0
