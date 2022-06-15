#!/bin/bash

systemctl stop rclone-bisync.timer
systemctl disable rclone-bisync.timer

rm /etc/systemd/system/rclone-bisync.timer
rm /etc/systemd/system/rclone-bisync.service
rm /usr/local/bin/rclone-bisync.sh

