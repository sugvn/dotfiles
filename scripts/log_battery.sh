#!/bin/bash

log_file="/home/sugan/.battery.log"
percentage=$(upower -i $(upower -e | grep 'BAT') | grep percentage | awk '{print $2}')
bat_status=$(cat /sys/class/power_supply/BAT0/status)
date_time=$(date '+%d-%m-%y %H:%M')
echo "$date_time $percentage     $bat_status" >> $log_file

