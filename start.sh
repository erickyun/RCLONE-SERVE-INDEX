curl "$CONFIG_IN_URL"> /home/rc.conf; rclone serve webdav AllDrives: --addr 0.0.0.0:3000 --user $INDEXusername --pass $INDEXpassword --config=/home/rc.conf
