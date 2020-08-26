#!/bin/sh

CURRENT_TTY_SETTINGS=$(stty -g)
stty -icanon -echo min 0 time "$1"0
read -r foo
stty "$CURRENT_TTY_SETTINGS"
