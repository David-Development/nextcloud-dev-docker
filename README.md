# nextcloud-dev-docker


## TL;DR

In a terminal, paste and run these commands. :) After starting up the container you will be able to edit the calendar app (which can be found in the apps/calendar folder). Any changes you make will be automatically updated. Just head over to your browser and hit the reload button to see the changes.

### On Mac or Linux
Install prerequisites:
```
sudo apt install docker-compose
sudo systemctl start docker
sudo usermod -aG docker yourusername
```
Then log out and log back in again.

```
git clone https://github.com/David-Development/nextcloud-dev-docker.git
cd nextcloud-dev-docker/apps/
git clone -b vue https://github.com/nextcloud/contacts.git
cd ..
docker-compose up --build
```

### On Windows
```
git clone https://github.com/David-Development/nextcloud-dev-docker.git --config core.autocrlf=input
cd nextcloud-dev-docker/apps/
git clone -b vue https://github.com/nextcloud/contacts.git --config core.autocrlf=input
cd ..
docker-compose up --build
```


## Why use this container?

This docker setup allows you to setup a development environment in just a few minutes. It allows you to map the app that you want to work on into the container so that you can use your favorite development tools on your computer.

## How to work/develop on a different app

Just clone the app that you want to work on into the apps folder which can be found in this directory. After that, open the `docker-compose.yaml` file and add the following line to the volumes section: `- ./apps/<app-name-here>:/var/www/html/apps2/<app-name-here>:rw` (make sure to replace the `<app-name-here>` with the actual app name that you want to work on)

After that, open the `run.sh` which is located in this folder and change the `make` command to match the app that you want to work on.


## destroy

```bash
docker-compose down -v
```
