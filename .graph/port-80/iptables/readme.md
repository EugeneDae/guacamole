# Works
https://docs.lucee.org/guides/installing-lucee/lucee-server-adminstration-linux/configure-Tomcat-listen-to-port.html

`sudo iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080`
