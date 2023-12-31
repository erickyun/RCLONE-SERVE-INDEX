mkdir ./home
curl "$CONFIG_IN_URL" > /home/rc.conf; rclone serve webdav AllDrives: --addr :$PORT --user $INDEXusername --pass $INDEXpassword --config=/home/rc.conf
