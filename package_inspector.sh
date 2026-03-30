#!/bin/bash
PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control for developers" ;;
    apache2) echo "Apache: web server of the open internet" ;;
    mysql-server) echo "MySQL: database for millions of apps" ;;
    vlc) echo "VLC: multimedia freedom" ;;
esac