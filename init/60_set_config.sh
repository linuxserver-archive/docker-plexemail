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

if [ ! -f /config/testscripts/send_one_time_email.sh ]; then
	mkdir -p /config/testscripts/
  cp /defaults/send_one_time_email.sh /config/testscripts/send_one_time_email.sh
fi

if [ ! -f /config/testscripts/test_plexemail.sh ]; then
  mkdir -p /config/testscripts/
  cp /defaults/test_plexemail.sh /config/testscripts/test_plexemail.sh
fi

chown abc:abc -R /config
