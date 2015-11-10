#!/bin/bash

if [ ! -f /config/config.conf ]; then
  cp /defaults/config.conf /config/config.conf
fi

if [ ! -f /config/cron/crontab ]; then
	mkdir -p /config/cron/
	cp /defaults/crontab /config/cron/crontab
fi

chown abc:abc /config/*