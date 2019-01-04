#!/bin/bash

set -e 

export TOPDIR=".."

usage ()
{
  cat <<EOF

USAGE : $(basename $0) GROUP_NAME

EOF
}

if [ -z "$1" ]; then
	usage
	exit 1
fi

GROUP_NAME="$1"

. $TOPDIR/libraries/user-group-lib.sh

create_group $GROUP_NAME

echo "Done"

exit 0
