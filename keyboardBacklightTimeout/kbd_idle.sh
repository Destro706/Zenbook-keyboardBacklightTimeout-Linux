#!/bin/bash
idle=false
idleAfter=30000 #timeout in milliseconds
savedState=0
while true; do
  idleTimeMillis=$(python3 getUserIdleTime.py)
  if [[ $idle = false && $idleTimeMillis -gt $idleAfter ]] ; then
 savedState=$(cat /sys/class/leds/asus::kbd_backlight/brightness)
 sudo ./setstate.sh 0
 idle=true
  fi
  if [[ $idle = true && $idleTimeMillis -lt $idleAfter ]] ; then
 sudo ./setstate.sh $savedState
 idle=false
  fi
  sleep 1
done
