#!/bin/bash
DIRECTORY="/dl/auto/"

inotifywait -m -r -e create -e moved_to --format '%w%f' "$DIRECTORY" | while read FILE
do
    if [[ "$FILE" == *.mkv ]]; then
        sleep 5
        bash sub.sh "$FILE"
    fi
done
