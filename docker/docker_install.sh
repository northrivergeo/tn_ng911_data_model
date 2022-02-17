#Hasn't been tested yet. Should setup the kartoza postgis docker image. 
sudo apt-get install docker.io docker-compose
sudo apt-get update && sudo apt-get upgrade -y
sudo docker pull kartoza/postgis:13.0
sudo docker volume create pg_data
docker run --name=postgis -d -e POSTGRES_USER=postgres -e POSTGRES_PASS=password -e POSTGRES_DBNAME=ng911 -e ALLOW_IP_RANGE=0.0.0.0/0 -p 5432:5432 -v pg_data:/var/lib/postgresql kartoza/postgis:13.0
