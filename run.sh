service mysql stop
service apache2 stop
docker rm $(docker ps -a -q) -f #removes your containers
docker network prune -f #remove all unused networks
#docker-compose build --no-cache #uncomment if you want to reinstall containers
docker-compose up -d #running your containers
iptables -A INPUT -p tcp -d 0/0 -s 0/0 --dport 9003 -j ACCEPT #fixing ports for your containers
docker exec -it mg-app php -v #run command in your container
