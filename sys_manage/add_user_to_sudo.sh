#!/bin/bash

set -e 

export TOPDIR=".."

usage ()
{
  cat <<EOF

USAGE : $(basename $0) USER_NAME

EOF
}

USER_NAME="$1"

. $TOPDIR/libraries/user-group-lib.sh

add_user_to_group sudo $USER_NAME

@echo "Done"

exit 0