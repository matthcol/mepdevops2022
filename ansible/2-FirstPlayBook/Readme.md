# Playbook to copy artifact in several hosts

## Check syntax
- ansible-playbook -i hosts --syntax-check movieapp.yml

## playbook de copie : movie
- ansible-playbook -i hosts -u matt movieapp.yml

## playbook de nettoyage : 
- ansible-playbook -i hosts -u matt delmovieapp.yml
