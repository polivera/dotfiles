#!/bin/bash

docker run --rm --name scrap-postgres -e POSTGRES_PASSWORD=secret -e POSTGRES_USER=pgscratch -p 5433:5432 -d postgres
