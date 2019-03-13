#!/bin/bash
docker run -p 8080:8080 -v $PWD:/etc/krakend/ devopsfaith/krakend
