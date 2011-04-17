#!/bin/bash -x
. /etc/private/aws-credential
ec2-upload-bundle --location $Location -b $BundlePrefix -m /mnt/`cat bundle_name`.manifest.xml -a "$AWSAccessKeyId" -s "$AWSSecretKey"
result=$(ec2-register $BundlePrefix/`cat bundle_name`.manifest.xml)
echo $result
image=`echo $result | cut -d' ' -f2`
echo $image > instance_`cat bundle_name`_ami
