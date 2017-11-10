#!/bin/sh

# by bibliary
# 09.2017
# v.1.0

# set numbers of cams, that you want to download
cams = {3 8 10 55}
for i in $cams
do
# Download the picture from cam, picture update every 3 minutes.
# Create dirs if they did't exist.
# For the best - add to cron with interval 3 minutes.
# Create new directory for each day.
# Rename download file to cam name, date and time
curl https://arkada.ua/public/files/ipcam$i/now.jpg --create-dirs -o /*you_path*/cam$i/`date +%F`/cam$i-`date +%F_%H-%M`.jpg
done