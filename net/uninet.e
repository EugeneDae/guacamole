[node]
192.168.2.138

[node:vars]
ansible_become_password=u
ansible_user=support


[net:children]
node
