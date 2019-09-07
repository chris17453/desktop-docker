#!/bin/bash

# give the machine a new id
/usr/bin/dbus-uuidgen>/etc/machine-id 
#update any links
/usr/sbin/ldconfig

# target LOCAL user creaton
useradd --create-home --shell /bin/bash --groups wheel $USER
echo "$USER:$PASSWORD" | chpasswd

# update the user 
sed -i "s/USERNAME/$USER/g" /etc/supervisor/supervisord.conf

# run custom user script
chmod +x /user_setup.sh
/user_setup.sh

#create logging directory
mkdir -p  /var/log/supervisord

# remove env variables
unset USER
unset PASSWORD

# run supervisord, whic keeps everything runing. When this dies
# the docker go's away
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf