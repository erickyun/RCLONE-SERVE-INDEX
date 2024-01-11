curl -L "$CONFIG_IN_URL" -o /home/rc.conf; rclone serve webdav $CLOUDNAME: --addr :$PORT --user $INDEXusername --pass $INDEXpassword --config=/home/rc.conf --dir-cache-time 1000h --poll-interval 30s --umask 002 --cache-dir=/root --vfs-cache-mode full --vfs-cache-max-size 1.5G --vfs-cache-max-age 4h --drive-chunk-size 32M --bwlimit-file 16M --attr-timeout 8700h --use-mmap --stats 10s --buffer-size 32M --vfs-cache-poll-interval 30s --dir-cache-time 8700h --vfs-cache-max-age 4h --async-read=true --vfs-read-chunk-size 32M --vfs-read-chunk-size-limit 1G --local-no-check-updated --drive-chunk-size=64M --multi-thread-streams=8 --multi-thread-cutoff 100M --transfers 8 --drive-disable-http2=true --fast-list --timeout 30m --vfs-case-insensitive --drive-pacer-burst 200 --no-console
