# Systemd breaks RDP
RDP Works when started by terminal `guacd` or init.d scripts, but not with systemd!

# Discuss
http://apache-guacamole-general-user-mailing-list.2363388.n4.nabble.com/Update-to-1-1-0-breaks-RDP-td7266.html

# Cause
found the root cause:
> "FreeRDP initialization may fail: The current user's home directory ("/usr/sbin") is not writable, but F"

in `journalctl -b`



# Solution!
http://apache-guacamole-general-user-mailing-list.2363388.n4.nabble.com/Update-to-1-1-0-breaks-RDP-tp7266p7287.html

"I found this line in the syslog:

Feb 18 08:06:32 guacamole guacd[11765]: guacd[11785]: WARNING:#011FreeRDP
initialization may fail: The current user's home directory ("/usr/sbin") is
not writable, but FreeRDP generally requires a writable home directory for
storage of configuration files and certificates.

The service file which guacd creates at build runs guacd as the user
"daemon" which does not seem to have a writable home directory. As "useradd
-m damon" did not help to create a homedir for "daemon" I have changed the
user from "daemon" to "root" in /etc/systemd/system/guacd.service, then
"systemctl daemon reload" and "service guacd restart".

RDP works fine now :-)"
