FROM kalilinux/kali:amd64

RUN DEBIAN_FRONTEND=noninteractive apt update && \
        DEBIAN_FRONTEND=noninteractive apt -y install kali-linux-large kali-desktop-xfce xfce4 tigervnc-standalone-server docker.io supervisor

RUN mkdir -p /scripts
ADD supervisor.conf.d/ /etc/supervisor/conf.d/
ADD launcher.sh /scripts/launcher.sh

ENTRYPOINT bash /scripts/launcher.sh
