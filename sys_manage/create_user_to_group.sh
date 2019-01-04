#!/bin/bash

set -e 

export TOPDIR=".."

usage ()
{
  cat <<EOF

USAGE : $(basename $0)  USER_NAME GROUP_NAME

EOF
}

if [ -z "$1" ]; then
	usage
	exit 1
fi

if [ -z "$2" ]; then
	usage
	exit 1
fi

USER_NAME="$1"
GROUP_NAME="$2"

. $TOPDIR/libraries/user-group-lib.sh

create_user_to_group  $USER_NAME $GROUP_NAME

echo "Done"

exit 0
