# frog-project
## About this project
This project uses Nginx as the Load Balancer to balance traffic between the two web servers  which serves static content from 2+ replicas, containing the host information 

`“Hello frog! I’m answering you from VM-1/docker-1 (<unique-hostname>).”`

## Pre-requisites 
First, you will need to make sure git, Docker and Docker compose are installed on your laptop/workstation 

[Git Installation](https://git-scm.com/downloads)

[Docker Installation](https://docs.docker.com/engine/install/)

[Docker Compose](https://docs.docker.com/compose/install/)

## Clone the project 

`$ git clone https://github.com/naren-sre/frog-project.git `

## Run the application using docker compose 
After downloading the files as shown above run the follwing command

`$ cd test_project`

`$ docker-compose up -d --build`

## Check the status of the app 

`$ docker ps`

The app has been scaled to 4 repliacas in the dockercompose.ymlnginx web servers and one load balancer.


## Testing:
use curl command from  your terminal in your pc/workstation and go to http://localhost:8080

`curl -s http://localhost:8080/?update_=10 | grep -i frog`

## Testing multiple requests at once

`curl -s http://localhost:8080 && curl -s http://localhost:8080 && curl -s http://localhost:8080 && curl -s http://localhost:8080`


The nginix based load balancer(lbr) will be switching between 4 different web servers named "client" ( with hostname displayed for each request)

## Post testing
Use this command to bring the contianers down.

`$docker-compose down`

Sources referred.:
https://hub.docker.com/_/ nginx

https://stackoverflow.com/questions/24168129/use-hostname-in-sed-substitution

http://nginx.org/en/docs/http/load_balancing.html

https://stackoverflow.com/questions/27355270/docker-nginx-deployment-entrypoint

