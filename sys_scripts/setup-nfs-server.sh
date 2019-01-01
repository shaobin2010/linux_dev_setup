#!/bin/bash

apt-get install -y nfs-kernel-server


if [ ! -d /nfsroot ]; then
    mkdir -p /nfsroot
fi

echo "/nfsroot/ *(rw,no_root_squash,async,no_subtree_check)" >> /etc/exports

service nfs-kernel-server restart

echo "Done"
exit 0
