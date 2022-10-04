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

`$ git clone https://github.com/nmandalapu/test_project.git `

## Run the application using docker compose 
After downloading the files as shown above run the follwing command

`$ cd test_project`

`$ docker-compose up -d --build`

## Check the status of the app 
`$ docker ps`

## Testing:
curl from your terminal in your pc and go to localhost:8080

`curl -s http://localhost:8080/?update_=10 | grep -i fro`

`curl -s http://localhost:8080 && curl -s http://localhost:8080 && curl -s http://localhost:8080 && curl -s http://localhost:8080`

Hit refresh or open multiple pages from browser and notice the contianer name will be different for each request
The nginix based load balancer will be switching between 4 different web servers ( with hostname displayed for each request)

## Post testing
`$docker-compose down`
