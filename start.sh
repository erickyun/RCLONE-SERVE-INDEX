mkdir /home/
curl "$CONFIG_IN_URL" > /home/rc.conf; rclone serve webdav AllDrives: --addr 0.0.0.0:$PORT --user $INDEXusername --pass $INDEXpassword --config=/home/rc.conf
