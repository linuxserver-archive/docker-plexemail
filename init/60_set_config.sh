#!/bin/bash

if [ ! -f /config/config.conf ]; then
  cp /defaults/config.conf /config/config.conf
fi

if [ ! -f /config/cron/crontab ]; then
	mkdir -p /config/cron/
	cp /defaults/crontab /config/cron/crontab
fi

if [ ! -f /config/www/LICENSE ]; then
	cp -r /app/plexemail/web/* /config/www/
fi

chown abc:abc /config/*