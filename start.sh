curl "$CONFIG_IN_URL" > /home/rc.conf; rclone serve webdav $CLOUDNAME: --addr :$PORT --user $INDEXusername --pass $INDEXpassword --config=/home/rc.conf
