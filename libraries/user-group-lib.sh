#!/bin/bash

#-----------------------------------------------------------------------------
# Add user into sudo group
#-----------------------------------------------------------------------------

add_user_to_group()
{
	local USER_NAME="$1"
	local GROUP_NAME="$2"

	if [ -n "$USER_NAME" ] && [ -n "$GROUP_NAME" ]; then
		usermod -aG $GROUP_NAME $USER_NAME
	fi
}

