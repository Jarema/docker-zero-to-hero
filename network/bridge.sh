#!/bin/bash

# run on bridge
docker run --name webapp -d training/webapp
docker run --link webapp --name nginx -p 8080:80 -v `pwd`/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx
