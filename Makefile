 
.DEFAULT: help

.PHONY: all test clean profile

help:
	@echo "clean           | delete the docker images for this project"
	@echo "build           | create the docker images for this project"
	@echo "base            | create the docker base image for this project"
	@echo "gnome           | create the docker gnome image for this project"
	@echo "mate            | create the docker mate images for this project"
	@echo "run-mate        | load the mate desktop docker"
	@echo "run-gnome       | load the gnome desktop docker"


clean:
	docker rm image gnome-desktop-docker
	docker rm image mate-desktop-docker
	

base:
	docker build -t desktop-docker-base  -f Dockerfile-desktop-docker-base .


gnome:
	docker build -t desktop-docker-gnome -f Dockerfile-desktop-docker-gnome .

mate:
	docker build -t desktop-docker-mate  -f Dockerfile-desktop-docker-mate .

lxqt:
	docker build -t desktop-docker-lxqt  -f Dockerfile-desktop-docker-lxqt .

xfce:
	docker build -t desktop-docker-xfce  -f Dockerfile-desktop-docker-xfce .

build:
	docker build -t desktop-docker-base  -f Dockerfile-desktop-docker-base .
	docker build -t desktop-docker-gnome -f Dockerfile-desktop-docker-gnome .
	docker build -t desktop-docker-mate  -f Dockerfile-desktop-docker-mate .
	docker build -t desktop-docker-lxqt  -f Dockerfile-desktop-docker-lxqt .
	docker build -t desktop-docker-xfce  -f Dockerfile-desktop-docker-xfce .

run-gnome:
	docker run -itd -p 3389:3389 --env USER=nd --env PASSWORD=password desktop-docker-gnome

run-mate:
	docker run -itd -p 3389:3389 --env USER=nd --env PASSWORD=password desktop-docker-mate

run-lxqt:
	docker run -itd -p 3389:3389 --env USER=nd --env PASSWORD=password desktop-docker-lxqt

run-xfce:
	docker run -itd -p 3389:3389 --env USER=nd --env PASSWORD=password desktop-docker-xfce

