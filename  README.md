# App for Home work

## HOW TO USE

1) install latest docker-compose
2) build docker: docker compose build
3) docker compose exec -it ansible bash
4) cd /share
5) ansible-playbook playbook_win.yml -i ./hosts.txt 
6) ansible-playbook playbook_linux.yml -i ./hosts.txt -u root -k
7) to execute monitoring script:
     'timeout 5m monitoring.sh'

