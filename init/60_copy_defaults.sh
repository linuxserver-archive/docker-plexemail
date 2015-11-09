#!/bin/bash

if [ ! -f /config/config.conf ]; then
  cp /defaults/config.conf /config/config.conf
fi

if [ ! -f /config/cron/crontab ]; then
	mkdir /config/cron/
	cp /defaults/crontab /config/cron/crontab
fi

if [ ! -f /config/www/]; then
	mkdir /config/www
	cp /config/www/index.html /config/www/index.html
fi