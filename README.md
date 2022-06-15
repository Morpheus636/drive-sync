# Morpheus636's Drive Sync Utility
This tool installs a systemd service on a 10 minute timer for syncing files using rclone
bisync.

## Usage
1. Install rclone
    - `curl https://rclone.org/install.sh | sudo bash`
2. [Configure rclone with your remotes](https://rclone.org/docs/)
3. Add the locations you want to sync to `src/rclone-bisync.sh` using this format:
    - `sudo -u <USERNAME> rclone bisync </PATH/TO/LOCAL/> <REMOTENAME>:<REMOTE/DEST/PATH>`
4. Run `chmod +x install.sh uninstall.sh`
5. Run `sudo ./install.sh`

### To update your synced files.
1. Update `src/rclone-bisync.sh` as outlined in step 3 above.
2. Run `sudo ./uninstall.sh`
3. Run `sudo ./install.sh`

### To uninstall the utility.
1. Run `sudo ./uninstall.sh`

