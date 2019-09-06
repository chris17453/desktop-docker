# Desktop in a docker

## Why?
- easier to setup thana vm
- repeatable
- builds with 2 files


## Images
This repo contains 2 desktop docker builds

- gnome
- mate

## additoinal software installed
- visual studio code
- chrome
- geany
- git
- svn

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



## TODO
- Add LDAP
- Add user mountable directories/volumes

