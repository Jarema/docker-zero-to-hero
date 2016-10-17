#!/bin/bash

# run on host network
docker run -d -net=host training/webapp

# run on bridge
docker run --name webapp -d training/webapp
docker run --link webapp --name -p 8080:80 nginx -v `pwd`/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx

# run on user defined network
docker network create --name demo
docker run -d --name webapp --net=demo training/webapp
docker run -d --name nginx -l 8080:80 --net=demo -v `pwd`/nginx.conf:/etc/nginx/nginx.conf:ro nginx
