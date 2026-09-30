#!/bin/bash
# usage: ./shrink.sh input.mkv output.mp4
ffmpeg -hwaccel qsv -hwaccel_output_format qsv -i "$1" \
  -map 0:0 -map 0:1 \
  -vf "scale_qsv=1280:-1:format=nv12" \
  -c:v h264_qsv -preset veryfast -global_quality 24 \
  -c:a aac -b:a 128k \
  "$2"
