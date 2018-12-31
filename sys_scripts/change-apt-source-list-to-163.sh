#!/bin/bash

set -e 

cp /etc/apt/sources.list /etc/apt/sources.list.bak

echo 'deb http://mirrors.163.com/ubuntu/ precise-updates main restricted' > /etc/apt/sources.list 
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-updates main restricted' >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise universe' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise universe' >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-updates universe' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-updates universe' >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-updates multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-updates multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse' >> /etc/apt/sources.list

apt-get update

echo "Done"
exit 0
