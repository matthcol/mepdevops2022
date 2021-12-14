# Ansible with command line

## Ping 
Current user has no ssh key, has to provide password : -k. Matt can connect without password by providing once his key to ssh-agent.
- ansible all -k -i hosts -m ping
- ansible all -u matt -i hosts -m ping

## Copy artifact
- ansible api -u matt -i hosts -m copy -a "src=~/movieapi.jar dest=."

## Install JRE
User matt becomes root via sudo (without password)
User srvadmin becomes root via sudo with password (-K), and connect with ssh with password too (-k)
User srvadmin use su to become root
- ansible api --become -u matt -i hosts -m apt -a "name=openjdk-11-jre state=present"
- ansible api --become -k -K -u srvadmin -i hosts -m apt -a "name=openjdk-11-jre state=present"
- ansible api --become --become-method su --become-user root -k -K -u srvadmin -i hosts -m apt -a "name=openjdk-11-jre state=present"
