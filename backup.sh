#!/bin/bash

./diff-states.sh $1 > backup-tmp
rsync -vv --files-from=backup-tmp / backups/
