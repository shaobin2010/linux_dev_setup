#!/bin/bash

set -e 

cp /etc/apt/sources.list /etc/apt/sources.list.bak

deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse > /etc/apt/sources.list 
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse  >> /etc/apt/sources.list
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse  >> /etc/apt/sources.list
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse  >> /etc/apt/sources.list
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse  >> /etc/apt/sources.list
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse  >> /etc/apt/sources.list
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse  >> /etc/apt/sources.list
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse  >> /etc/apt/sources.list
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse  >> /etc/apt/sources.list
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse  >> /etc/apt/sources.list

apt-get update

echo "Done"
exit 0
