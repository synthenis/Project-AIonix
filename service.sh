#!/system/bin/sh
#
# Copyright 2025 PASA
# All rights reserved.
#
# This file is part of a proprietary Magisk module.
# Unauthorized copying, modification, or distribution of this file,
# via any medium, is strictly prohibited.

for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
  [ -f "$cpu" ] && echo "schedutil" > "$cpu"
done

for device in mmcblk0 sda sdb sdc; do
  queue="/sys/block/$device/queue"
  if [ -d "$queue" ]; then
    [ -f "$queue/read_ahead_kb" ] && echo 1024 > "$queue/read_ahead_kb"
    [ -f "$queue/nr_requests" ] && echo 512 > "$queue/nr_requests"
    [ -f "$queue/iostats" ] && echo 0 > "$queue/iostats"
    [ -f "$queue/add_random" ] && echo 0 > "$queue/add_random"
  fi
done

echo 8192 > /proc/sys/vm/min_free_kbytes
echo 0 > /proc/sys/vm/page-cluster

sleep 200

while true; do
  setprop ctl.restart ril-daemon
  sleep 13200
done