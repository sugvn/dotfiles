#!/bin/bash

current_mode=$(tuned-adm active | awk '{print $NF}')
echo "$current_mode"

if [ "$current_mode" = "powersave" ]; then
        pkexec sh -c "tuned-adm profile throughput-performance && iw dev wlp1s0 set power_save off"
else
        pkexec sh -c "tuned-adm profile powersave && iw dev wlp1s0 set power_save on"
fi

tuned_status=$(tuned-adm active)
wifi_status=$(iw dev wlp1s0 get power_save)
notify-send "$tuned_status"$'\n'"Wifi $wifi_status"
