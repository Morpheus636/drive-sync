#!/bin/bash

# Copy files to the correct locations
cp ./src/rclone-bisync.sh /usr/local/bin/rclone-bisync.sh
chmod +x /usr/local/bin/rclone-bisync.sh
cp ./src/rclone-bisync.service /etc/systemd/system/rclone-bisync.service
cp ./src/rclone-bisync.timer /etc/systemd/system/rclone-bisync.timer

# Restart systemd then enable and start the service
systemctl daemon-reload
systemctl enable rclone-bisync.timer
systemctl start rclone-bisync.timer

