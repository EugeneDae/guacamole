[uninet]
192.168.122.46

[uninet:vars]
ansible_become_password=u
ansible_user=me


[node:children]
uninet
