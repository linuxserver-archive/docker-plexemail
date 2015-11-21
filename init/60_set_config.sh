#!/bin/bash

if [ ! -f /config/config.conf ]; then
  cp /defaults/config.conf /config/config.conf
fi

if [ ! -f /config/cron/crontab ]; then
	mkdir -p /config/cron/
	cp /etc/cron.d/crontab /config/cron/crontab
fi

if [ ! -f /app/plexemail/web/index.html ]; then
	cp /config/www/index.html /app/plexemail/web/index.html
fi

if [ ! -f /config/send_one_time_email.sh ]; then
  cp /defaults/send_one_time_email.conf /config/send_one_time_email.conf
fi

if [ ! -f /config/test_plexemail.sh ]; then
  cp /defaults/test_plexemail.conf /config/test_plexemail.conf
fi

chown abc:abc -R /config
