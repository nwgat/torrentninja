#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.mkv}.default.en.srt"

# Run the ffmpeg command
if ffmpeg -hide_banner -i "$input_file" -map 0:s:0 -codec:s text "$output_file" > /dev/null 2>&1; then
    echo "Subtitle file '$output_file' created successfully."
else
    echo "Error executing ffmpeg command."
fi
