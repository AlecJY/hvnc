#!/bin/sh
sed -i s:/usr/bin:/app/nib: "$HOME/.apt/usr/bin/Xvfb"
Xvfb -screen 0 1024x768x16 :42 </dev/null &> /dev/null &
sleep 5
x11vnc -bg -nopw -connect $1 -xkb
google-chrome &
