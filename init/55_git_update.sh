#!/bin/bash

[[ ! -d /app/plexemail/.git ]] && /sbin/setuser abc git clone https://github.com/jakewaldron/PlexEmail.git /app/plexemail

# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /app/plexemail
/sbin/setuser abc git pull
