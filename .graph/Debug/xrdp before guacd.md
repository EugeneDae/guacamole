# xrdp has to be started before guacd or it won't connect.
sudo systemctl start xrdp.service
sudo systemctl start guacd.service
