#!/bin/bash

set -e 

export TOPDIR=".."

usage ()
{
  cat <<EOF

USAGE : $(basename $0) USER_NAME

EOF
}

if [ -z "$1" ]; then
	usage
	exit 1
fi

USER_NAME="$1"

. $TOPDIR/libraries/user-group-lib.sh

sudo add_user_to_group sudo $USER_NAME

@echo "Done"

exit 0