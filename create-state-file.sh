#!/bin/sh

find / \! -regex '/external.*\|/proc.*\|/sys.*' -type f -printf '%p %s %T@\n' 2>/dev/null | sort >/external/install/states/state.`date +%s`
