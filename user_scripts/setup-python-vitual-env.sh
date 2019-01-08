#!/bin/bash

sudo apt install -y python-pip

pip install virtualenv -i https://pypi.douban.com/simple
pip install virtualenvwrapper -i https://pypi.douban.com/simple

if [ ! -d $HOME/.virtualenvs ]; then
    echo "create .virtualenvs directory"
    mkdir -p $HOME/.virtualenvs
fi

if grep "WORKON_HOME=" /home/h278775/.bashrc; then
    echo "..........."
else
    echo 'export WORKON_HOME=$HOME/.virtualenvs' >> $HOME/.bashrc
    echo 'source $HOME/.local/bin/virtualenvwrapper.sh' >> $HOME/.bashrc
    echo "**************************************************************"
    echo "*            Please do \"source ~/.bashrc\"                   "
    echo "**************************************************************"
fi

echo "Done"
exit 0
