I've been using Kartoza's docker image for this work. Just to save you some heartburn here is what I do. I'm up for more suggestions. 

Pull the latest image: 

Example: 


	docker pull kartoza/postgis:13.0  


I typcially store the database files locally after making a directory called pg_data. This will be different for your system. 
Example: 


	docker volume create --driver local --name pg_data --opt type=none --opt device=./pg_data --opt o=bind


Run Docker: 


	docker run --name=postgis -d -e POSTGRES_USER=user -e POSTGRES_PASS=password -e POSTGRES_DBNAME=tndemo -e ALLOW_IP_RANGE=0.0.0.0/0 -p 5432:5432 -v pg_data:/var/lib/postgresql/ kartoza/postgis:13.0

