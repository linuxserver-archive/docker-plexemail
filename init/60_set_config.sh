#!/bin/bash

if [ ! -f /config/config.conf ]; then
  cp /defaults/config.conf /config/config.conf
fi

if [ ! -f /config/cron/crontab ]; then
	mkdir -p /config/cron/
	cp /defaults/crontab /config/cron/crontab
fi

if [ ! -f /app/plexemail/web/index.html ]; then
	cp /config/www/index.html /app/plexemail/web/index.html
fi

chown abc:abc -R /config
