#!/bin/sh

#states='/ethernal/install/states'

#mkdir -r $states

# TODO: list symlinks!

find / -xdev \! -regex '/external.*\|/proc.*\|/sys.*' -xtype l -o -type f -printf '%p %s %T@\n' 2>/dev/null | sort 
