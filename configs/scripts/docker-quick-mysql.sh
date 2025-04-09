#!/usr/bin/env bash

docker run --rm --name scrap-mysql -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=toscrap -p 3309:3306 -d mysql:latest
