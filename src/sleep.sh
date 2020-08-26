#!/bin/sh
#
# Usage: sleep <Seconds>
# Note: Can't be used on a subshell

CURRENT_TTY_SETTINGS=$(stty -g)
stty -icanon -echo min 0 time "$1"0
read -r foo
stty "$CURRENT_TTY_SETTINGS"
