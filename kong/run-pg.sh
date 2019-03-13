#!/bin/bash -eax

# Start Database
docker run -d --name kong-database \
    --rm \
    -p 5432:5432 \
    -e "POSTGRES_USER=kong" \
    -e "POSTGRES_DB=kong" \
    postgres:9.6
