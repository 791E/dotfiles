#!/usr/bin/env bash

# Check if rclone is installed, exit silently if not
command -v rclone &> /dev/null || exit 0

# Get the list of all remotes
remotes=$(rclone listremotes | sed 's/:$//')

# Exit if there are no remotes
[ -z "$remotes" ] && exit 0

# Loop through each remote and mount it
for remote in $remotes; do
    MOUNT_POINT="$HOME/$remote"

    # Create the mount point if it doesn't exist
    [ -d "$MOUNT_POINT" ] || mkdir -p "$MOUNT_POINT" || { notify-send "Rclone Error" "Failed to create directory: $MOUNT_POINT"; exit 1; }

    # Mount the remote
    rclone mount "$remote:" "$MOUNT_POINT" --daemon || { notify-send "Rclone Error" "Failed to mount '$remote' at $MOUNT_POINT"; exit 1; }
done

