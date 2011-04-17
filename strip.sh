#!/bin/bash
grep -vE '^/var/tmp|^/usr/share|^/usr/lib|^/usr/include|^/usr/bin|^/var/db/pkg|^/etc/ld.so.cache|^/etc/csh.env|^/etc/profile.env|^/var/cache/edb'
