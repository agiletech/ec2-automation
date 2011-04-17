#!/bin/bash

from=$1
to=$2

[ "$to" ] || {
    to="states/state.tmp"
    ./create-state-file.sh > $to
}
comm -31 $from $to | cut -d' ' -f1
