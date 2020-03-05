#docker rm $(docker ps -a -q) -f
service mysql stop
service apache2 stop
docker-compose up -d