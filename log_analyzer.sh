#!/bin/bash
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."

grep -i "$KEYWORD" "$LOGFILE" | tail -5