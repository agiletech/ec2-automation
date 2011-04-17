#!/bin/bash
. /etc/private/aws-credentials
echo "Bundling into `cat bundle_name`"
ec2-bundle-vol --exclude /tmp,/external,/var/log,/www,/home,/opt,/dev,/mnt,/proc,/sys -d /mnt -k /etc/private/pk.pem -c /etc/private/cert.pem -u $AccountNumber -p `cat bundle_name` -s 3000
