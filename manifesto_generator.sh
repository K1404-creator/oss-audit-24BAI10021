#!/bin/bash
read -p "Tool you use daily: " TOOL
read -p "Freedom means: " FREEDOM
read -p "You would build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe in open source. Using $TOOL shows that $FREEDOM matters. I will build $BUILD and share it freely." > $OUTPUT

cat $OUTPUT