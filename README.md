# nextcloud-dev-docker


## TL;DR

In a terminal, paste and run these commands. :)

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
git clone https://github.com/nextcloud/contacts.git
cd ..
docker-compose up --build
```

### On Windows
```
git clone https://github.com/David-Development/nextcloud-dev-docker.git --config core.autocrlf=input
cd nextcloud-dev-docker/apps/
git clone https://github.com/nextcloud/contacts.git --config core.autocrlf=input
cd ..
docker-compose up --build
```

## Compile own app

- Open up run-dev.sh and edit `make` command



## destroy

```bash
docker-compose down -v
```
