#!/bin/bash
 
#
# highlight.sh - Randomly change the color of OSX highlight
# 
# For a fun experiment, use it with cron :
#
# 1) Save the file into your home directory (~/highlight.sh)
# 2) Launch Terminal and type : crontab -e
# 3) Add the following line :
#    * * * * * ~/highlight.sh > /tmp/highligth
# 4) Quit crontab and run this command : chmod +x ~/highlight.sh
#
# If there is a color you like, look into /tmp/highlight to get the command to recreate it
#
 
r=`echo "scale=4; $RANDOM/32767" | bc`
g=`echo "scale=4; $RANDOM/32767" | bc`
b=`echo "scale=4; $RANDOM/32767" | bc`
 
cmd="defaults write NSGlobalDomain AppleHighlightColor -string '$r $g $b'"
 
echo $cmd
eval $cmd