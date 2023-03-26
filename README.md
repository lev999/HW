# Home work

## Ansible
1) install latest docker-compose
2) build docker: docker compose build
3) docker compose exec -it ansible bash
4) cd /share
5) ansible-playbook playbook_win.yml -i ./hosts.txt 
6) ansible-playbook playbook_linux.yml -i ./hosts.txt -u root -k

## Scripting
1) to execute monitoring script:
     'TOP_script/timeout 5m TOP_monitoring.sh'
2) to execute analyze script:
     'TOP_script/TOP_analyze.sh'

## BONUS: Docker
1) cd Docker/my_repo
2) git clone <your repo> 
3) cd ..
4) docker build -t my-nginx-image .
5) docker run -p 8080:80 my-nginx-image
