sudo apt-get install -y lxde tightvncserver
chmod -x /root/.vnc/xstartup
vncserver -kill :1
vncserver :1