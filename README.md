# Desktop in a docker
Desktop virtualization as cattle not pets

## Why, because controll all things.
- easier to setup than a vm
- repeatable
- ephemeral 
- understandable
- builds with just a few files, maybe 100 lines in all

## NOTE..
- only mate works at this moment, the other images are a WIP

## Images
This repo contains 4 desktop docker builds, with a base size of 2GB plus the size of the desktop

- gnome 2.8 GB
- mate  1.2GB
- LXQt   112MB
- xfce   512MB 


## additoinal software installed

- Group -> Development Tools
- Group -> LibreOffice
- visual studio code
- chrome
- geany
- git
- svn
- htop
- ack
- wget
- perl
- python2
- i3


## Build Base Desktop Image

```bash

docker build -t desktop-docker -f base-Dockerfile  .
```

## Build Mate

```bash

docker build -t mate-docker --build-arg USER=default_user --build-arg PASSWORD=xxx -f mate-Dockerfile  .
```

## Run Mate

```bash
docker run -d -p 3389:3389 mate-docker
```

## Build Gnome

```bash

docker build -t gnome-docker --build-arg USER=default_user --build-arg PASSWORD=xxx -f gnome-Dockerfile  .
```

## Run Gnome

```bash
docker run -d -p 3389:3389 gnome-docker
```

## To connect

RDP to localhost and connect with the user credentials listed in the build command

### Test build

```bash

docker build -t desktop-docker -f base-Dockerfile  .
docker build -t mate-docker --build-arg USER=dev --build-arg PASSWORD=dev -f mate-Dockerfile  .
docker build -t gnome-docker --build-arg USER=dev --build-arg PASSWORD=dev -f gnome-Dockerfile  .
```

## TODO

- Add LDAP
- Add user mountable directories/volumes
- setup scap profile / scan
- move user creation and customization into startup  script


### RDP Demo
![Demo](https://raw.githubusercontent.com/chris17453/desktop-docker/master/demo/rdp.gif)



## possible desktops... info..
Cinnamon: sudo yum install cinnamon-desktop
LXDE / LXQt: sudo yum install lxqt-session lxqt-panel lxqt-config lxqt-powermanagement lxqt-wallet lxqt-policykit
Several other window managers are available:

xmonad: sudo yum install xmonad
fluxbox: sudo yum install fluxbox
openbox: sudo yum install openbox
IceWM: sudo yum install icewm
Matchbox: sudo yum install matchbox-window-manager
WindowMaker: sudo yum install WindowMaker
spectrwm: sudo yum install spectrwm
fvwm: sudo yum install fvwm
pekwm: sudo yum install pekwm
vtwm: sudo yum install vtwm
