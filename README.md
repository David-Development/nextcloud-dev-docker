# nextcloud-dev-docker


## TL;DR

### On Mac or Linux
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
