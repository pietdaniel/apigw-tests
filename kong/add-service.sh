#!/bin/bash

# Add Service

curl -i -X POST \
    --url http://localhost:8001/services/ \
    --data 'name=python-service' \
    --data 'url=http://localhost:80'

# Add Route
curl -i -X POST \
    --url http://localhost:8001/services/python-service/routes \
    --data 'hosts[]=example.com'
