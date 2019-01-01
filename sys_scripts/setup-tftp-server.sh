#!/bin/bash

apt-get install -y tftpd-hpa


if [ ! -d /tftpboot ]; then
    mkdir /tftpboot
    chmod 1777 /tftpboot
fi

cat >/etc/default/tftpd-hpa <<EOF
TFTP_USERNAME="tftp"
TFTP_DIRECTORY="/tftpboot"
TFTP_ADDRESS="0.0.0.0:69"
TFTP_OPTIONS="--secure"
EOF

service tftpd-hpa restart

echo "Done"
exit 0
