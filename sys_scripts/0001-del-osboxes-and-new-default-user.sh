#!/bin/bash

user_name="shaobinw"
user_pass="123"
curr_pass="osboxes.org"


# Add new user if not exist
if [ -z "$(getent passwd ${user_name})"]; then
	echo "Creating user ${user_name} ... "
	echo $curr_pass | sudo -S useradd -m -s /bin/bash $user_name
	if  [ $? -eq 0 ]; then
		echo "${user_name} created success"
	else
		echo "${user_name} created failed"
		exit 1
	fi

else
	echo "${user_name} already exists"
fi


# Set password
echo $curr_pass | sudo -S echo "${user_name}：${user_pass}" | sudo chpasswd

# Add user into sudo group
echo $curr_pass | sudo -S usermod -a -G sudo $user_name

# Set root password
echo $curr_pass | sudo -S echo "root:root" | sudo chpasswd

