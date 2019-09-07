#!/bin/bash

#Install custom user items
runuser -u $USER -- code --install-extension ms-python.python
runuser -u $USER -- code --install-extension softwaredotcom.swdc-vscode
runuser -u $USER -- code --install-extension ms-vscode.cpptools
runuser -u $USER -- code --install-extension gerane.theme-santojon-dark
runuser -u $USER -- code --install-extension eamodio.gitlens

# create xsession file
echo "$SESS_APP">/home/$USER/.xsession
chown $USER:$USER /home/$USER/.xsession
chmod a+x /home/$USER/.xsession 


# turn off screensaver
echo "mode: off\n" > /home/$USER/.xscreensaver 
chown $USER:$USER /home/$USER/.xscreensaver

#XDG_DATA_DIRS=/usr/share/mate:/usr/share/mate:/usr/local/share
#XDG_DATA_DIRS=${XDG_DATA_DIRS}:/usr/share:/var/lib/snapd/desktop
#cat <<EOF > /home/$USER/.xsessionrc
#export XDG_SESSION_DESKTOP=mate
#export XDG_DATA_DIRS=${XDG_DATA_DIRS}
#export XDG_CONFIG_DIRS=/etc/xdg/xdg-mate:/etc/xdg