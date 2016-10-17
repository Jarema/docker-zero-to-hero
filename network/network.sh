#!/bin/bash

# run on user defined network
docker network create --driver bridge demo
docker run -d --name webapp --net=demo training/webapp
docker run -d --name nginx -p 8080:80 --net=demo -v `pwd`/nginx.conf:/etc/nginx/nginx.conf:ro nginx
