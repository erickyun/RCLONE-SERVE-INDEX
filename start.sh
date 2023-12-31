curl -L "$CONFIG_IN_URL" -o /home/rc.conf; rclone serve webdav $CLOUDNAME: --addr :$PORT --user $INDEXusername --pass $INDEXpassword --config=/home/rc.conf
