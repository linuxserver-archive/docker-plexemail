#!/bin/bash

#This Script runs a test of plexEmail and sends a test email to the sender in /config/config.conf

TEXT="CHANGE TEXT FOR EMAIL HERE"


/sbin/setuser abc python /app/plexemail/scripts/plexEmail.py -t -c /config/config.conf
