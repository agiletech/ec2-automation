#!/bin/bash

# this file fixes permissions system-wide in some sensetive areas

# home
chmod 711 /home
chmod 700 /home/*

# web
chmod 750 /www/
chown webmaster.apache /www/
