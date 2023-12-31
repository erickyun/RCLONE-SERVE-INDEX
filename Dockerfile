FROM nginx:1.19.6
RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget\
    && apt install unzip -y
RUN curl -L 'https://github.com/rclone/rclone/releases/download/v1.65.0/rclone-v1.65.0-linux-amd64.zip' -o rclone-current-linux-amd64.zip && \
    unzip rclone-current-linux-amd64.zip && \
    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
    
#RUN curl -O 'https://raw.githubusercontent.com/developeranaz/Rclone-olderversion-Backup/main/rclone-current-linux-amd64.zip' && \
#    unzip rclone-current-linux-amd64.zip && \
#    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
#    chown root:root /usr/bin/rclone && \
#    chmod 755 /usr/bin/rclone
#COPY rcindex /usr/bin/rcindex
#RUN chmod +x /usr/bin/rcindex
#CMD rcindex

COPY . .
RUN ["chmod", "+x", "start.sh"]
CMD ["bash", "start.sh"]
