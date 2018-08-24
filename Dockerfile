#FROM nextcloud:14.0.0beta4-fpm
FROM nextcloud:14.0.0beta4-apache

RUN    apt-get update \
    && apt-get install -y gnupg \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN    apt-get update \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir -p /usr/src/nextcloud/apps2
RUN mkdir -p /var/www/html/custom_apps


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN rm /usr/src/nextcloud/config/*
COPY config/* /usr/src/nextcloud/config/

COPY run-dev.sh /run-dev.sh

CMD sh /run-dev.sh