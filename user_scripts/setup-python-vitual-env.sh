#!/bin/bash

set -e 

sudo apt install -y python-pip

sudo pip install virtualenv
sudo pip install virtualenvwrapper

if [ -z $HOME/.virtualenvs ]; then
    mkdir $HOME/.virtualenvs
fi

if [ -z 'cat $HOME/.bashrc | grep WORKON_HOME=' ]; then
    echo 'export WORKON_HOME=$HOME/.virtualenvs' >> $HOME/.bashrc
    echo 'source /usr/local/bin/virtualenvwrapper.sh' >> $HOME/.bashrc
fi

echo "Done"
exit 0
