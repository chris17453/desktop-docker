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



## additoinal software installed

- Group -> Development Tools
- Group -> LibreOffice
- Languages -> openjava-jdk
- Languages -> perl
- Languages -> python2
- IDE -> visual studio code
- Browser-> chrome
- Browser-> firefox
- iced-tea (java applet viewer for the web)
- geany
- git
- svn
- htop
- ack
- wget
- i3

## To connect

RDP to localhost and connect with the user credentials listed in the build command
- Ex: user:password@127.0.0.1 

### Test build

```bash
make base
make mate
make run-mate
```
- Test user credentials are user/password

## TODO

- Add LDAP
- Add user mountable directories/volumes
- setup scap profile / scan
- move user creation and customization into startup  script


### RDP Demo
![Demo](https://raw.githubusercontent.com/chris17453/desktop-docker/master/demo/rdp.gif)



## possible desktops... info..
- Cinnamon: sudo yum install cinnamon-desktop
- LXDE / LXQt: sudo yum install lxqt-session lxqt-panel lxqt-config lxqt-powermanagement lxqt-wallet lxqt-policykit
- Several other window managers are available:
- xmonad: sudo yum install xmonad
- fluxbox: sudo yum install fluxbox
- openbox: sudo yum install openbox
- IceWM: sudo yum install icewm
- Matchbox: sudo yum install matchbox-window-manager
- WindowMaker: sudo yum install WindowMaker
- spectrwm: sudo yum install spectrwm
- fvwm: sudo yum install fvwm
- pekwm: sudo yum install pekwm
- vtwm: sudo yum install vtwm
