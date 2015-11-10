#!/bin/bash

if [ ! -d "/app/plexemail/.git" ]; then
/sbin/setuser abc git clone https://github.com/jakewaldron/PlexEmail.git /app/plexemail
else
cd /app/plexemail
/sbin/setuser abc git pull
fi
