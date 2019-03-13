#!/bin/bash
docker run --rm \
    --name server-python \
    -p 5001:80 \
    server-python
