#!/bin/bash

[[ ! -f /config/config.conf ]] && cp /defaults/config.conf /config/config.conf
[[ ! -f /app/plexemail/web/index.html ]] && /sbin/setuser abc cp /defaults/index.html /app/plexemail/web/index.html
[[ ! -f /etc/cron.d/plexemail ]] && cp /defaults/plexemail /etc/cron.d/plexemail

chown -R abc:abc /config
