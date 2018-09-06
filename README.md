# nextcloud-dev-docker

## Prerequisites

### Linux:

```bash
sudo apt install docker-compose
sudo systemctl start docker
sudo usermod -aG docker $USER
```
Then log out and log back in again.

### Mac:

- Docker for Mac: https://store.docker.com/editions/community/docker-ce-desktop-mac
  - Direct download: https://download.docker.com/mac/stable/Docker.dmg

### Windows:

- Docker for Windows: https://store.docker.com/editions/community/docker-ce-desktop-windows
  - Direct download: https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe
- Install git: https://git-scm.com/download/win



## TL;DR

In a terminal, paste and run these commands. :) After starting up the container you will be able to edit the calendar app (which can be found in the apps/calendar folder). Any changes you make will be automatically updated. Just head over to your browser and hit the reload button to see the changes.

### On Mac or Linux

```bash
git clone https://github.com/David-Development/nextcloud-dev-docker.git
cd nextcloud-dev-docker/apps/
git clone -b vue https://github.com/nextcloud/contacts.git
cd ..
docker-compose up --build
```

### On Windows

```bash
git clone https://github.com/David-Development/nextcloud-dev-docker.git --config core.autocrlf=input
cd nextcloud-dev-docker/apps/
git clone -b vue https://github.com/nextcloud/contacts.git --config core.autocrlf=input
cd ..
docker-compose up --build
```


## Why use this container?

This docker setup allows you to setup a development environment in just a few minutes. It allows you to map the app that you want to work on into the container so that you can use your favorite development tools on your computer.

## How to work/develop on a different app

Just clone the app that you want to work on into the apps folder which can be found in this directory. After that, open the `run.sh` which is located in this folder and add the required build commands. There are already a few examples included in the `run.sh` file.


## destroy

```bash
docker-compose down -v
```
