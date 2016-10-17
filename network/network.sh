#!/bin/bash

# run on user defined network
docker network create --name demo
docker run -d --name webapp --net=demo training/webapp
docker run -d --name nginx -l 8080:80 --net=demo -v `pwd`/nginx.conf:/etc/nginx/nginx.conf:ro nginx
