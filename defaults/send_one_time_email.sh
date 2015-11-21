#!/bin/bash

#This Script runs plexEmail and sends a one-time message to all reciepents.

TEXT="CHANGE TEXT FOR EMAIL HERE"


python /app/plexemail/scripts/plexEmail.py -c /config/config.conf -n "$TEXT"
