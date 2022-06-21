# Zenbook-keyboardBacklightTimeout-Linux
add and controle keyboard backlight timeout on Linux

I just set up a little script, as I wanted my keyboard backlight off automaticly after a specified time when not typing (ex watching video).
I am using it on Fedora Silverblue and it's working for me.


short install instructions (maybe I will add a install script later on)
1.  type "sudo visudo" and add this line (replace "yourUser" with username):
    yourUser        ALL=(ALL)	   NOPASSWD: /home/yourUser/.config/keyboardBacklightTimeout/setstate.sh
2.  move folder "keyboardBacklightTimeout" to ~/.config
3.  move file "kbd_idle.service" to ~/.config/systemd/user
4.  enable service by typing "systemctl --user enable kbd_idle.service"
