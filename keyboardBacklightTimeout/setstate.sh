#!/bin/bash
sudo /bin/sh -c "echo $1 >> /sys/class/leds/asus\:\:kbd_backlight/brightness"
