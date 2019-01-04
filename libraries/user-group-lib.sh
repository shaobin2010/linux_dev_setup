#!/bin/bash

#-----------------------------------------------------------------------------
# Add user into sudo group
#-----------------------------------------------------------------------------

create_user_to_group()
{
	local USER_NAME="$1"
	local GROUP_NAME="$2"

	if [ -n "$USER_NAME" ] && [ -n "$GROUP_NAME" ]; then
		useradd -d /home/$USER_NAME -s /bin/bash -G $GROUP_NAME -m $USER_NAME
	fi
}


create_group()
{
	local GROUP_NAME="$1"
        if [ -n "$GROUP_NAME" ]; then
                addgroup $GROUP_NAME
        fi
}

del_group()
{
        local GROUP_NAME="$1"
        if [ -n "$GROUP_NAME" ]; then
                delgroup $GROUP_NAME
        fi
}

add_user_to_group()
{
        local USER_NAME="$1"
        local GROUP_NAME="$2"

        if [ -n "$USER_NAME" ] && [ -n "$GROUP_NAME" ]; then
                usermod -aG $GROUP_NAME $USER_NAME
        fi
}


del_user_from_group()
{
        local USER_NAME="$1"
        local GROUP_NAME="$2"
        if [ -n "$USER_NAME" ] && [ -n "$GROUP_NAME" ]; then
                gpasswd -d $USER_NAME $GROUP_NAME
        fi
}
