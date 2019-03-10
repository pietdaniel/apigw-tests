#!/bin/bash
sudo docker run --net=host --rm -d --name server-python -p 127.0.0.1:5000:5000 server-python 
