FROM kalilinux/kali:amd64

RUN DEBIAN_FRONTEND=noninteractive apt update
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-desktop-xfce
RUN DEBIAN_FRONTEND=noninteractive apt -y install xfce4 
RUN DEBIAN_FRONTEND=noninteractive apt -y install tigervnc-standalone-server
RUN DEBIAN_FRONTEND=noninteractive apt -y install docker.io
RUN DEBIAN_FRONTEND=noninteractive apt -y install supervisor
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-linux-firmware
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-linux-headless
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-linux-nethunter
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-802-11
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-bluetooth
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-crypto-stego
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-database
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-exploitation
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-forensics
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-fuzzing
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-gpu
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-hardware
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-information-gathering
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-passwords
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-post-exploitation
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-reporting
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-reverse-engineering
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-rfid
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-sdr
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-sniffing-spoofing
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-social-engineering
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-top10
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-voip
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-vulnerability
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-web
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-windows-resources
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-wireless
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-linux-core
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-desktop-core
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-linux-default
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-linux-large
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-desktop-xfce

RUN mkdir -p /scripts
ADD supervisor.conf.d/ /etc/supervisor/conf.d/
ADD launcher.sh /scripts/launcher.sh

ENTRYPOINT bash /scripts/launcher.sh
