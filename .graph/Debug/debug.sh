ps aux | grep guacd


# Edit Systemd.service
sudo nano /etc/systemd/system/guacd.service
sudo systemctl daemon-reload

sudo systemctl start guacd.service
sudo systemctl status guacd.service
