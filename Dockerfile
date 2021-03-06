#FROM nextcloud:14.0.1-fpm
FROM nextcloud:14.0.1-apache

RUN    apt-get update \
    && apt-get install -y gnupg \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get update \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN    apt-get update \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

RUN npm install npm-watch

RUN mkdir -p /usr/src/nextcloud/apps2
RUN mkdir -p /var/www/html/custom_apps


RUN echo '/apps2/' >> /upgrade.exclude

RUN rm /usr/src/nextcloud/config/*
COPY config/* /usr/src/nextcloud/config/

COPY run-dev.sh /run-dev.sh

CMD sh /run-dev.sh
