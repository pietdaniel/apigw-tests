# What is an API Gateway

## Routing
## Transformation
## Monitoring
## Authn
## Authz
## Encryption
## Usage Policies

# Why

## Decoupling
## Security
## Cross Cutting Concerns
## Reduce Round Trips
## Circuit Breaker
## Load Balancer
## HTTP Caching
## Layer 7 Routing
## Service Discovery

# What to Compare

## Deployment
## Config
## Performance
## Complexity
## Failure Modes
## Feature Set
## Canary Releasing / Green Blue Deployments
## Header Augmentation

# Technologies

## off the shelf

### kong
   Lua Based
   Built off of:
    - Nginx
    - OpenResty
      - LuaJIT
    - Kong
   Built in 2010
   Open Source

   NGINX Kong Instances sit behind LB
   Nginx Kong Instances talk to a Datastore (Cassandra / Postgres)
   Many Plugins
   Uses Galileo for Dash/UI
   Does not have SOAP / XML Trans layer
   Has Ratelimiting
   CLI + REST API
   Apache 2.0 License

### tyk
   Written in Go
   MPL License
   Developed in 2014
   3 Components
   Api Gateway
   Backing Store (Redis, MongoDB)
   Tyk Pump (metrics)
   Tyk Pump Datastore (ES, MongoDB, InfluxDB)
   Plugin Support
    - Lua
    - Python
    - gRPC
   Kong outperforms Tyk on single machine
    5.2k r/s vs 3.8k r/s
   Bunk see's 400k r/s
   This decreases as plugins are added

Under active development, Kong is now used in production at hundreds of organizations 
from startups, to large enterprises and governments including: The New York Times,
Expedia, Healthcare.gov, The Guardian, Condè Nast, The University of Auckland, 
Ferrari, Rakuten, Cisco, SkyScanner, Yahoo! Japan, Giphy and so on.


### APIGee
   Founded in 2004
   Aquired by Google in 2016
   Enterprise JAVA
   Closed Source

### KrakenD
 Written in Go
 Great Benchmarks
 Started in Nov 2016
 Built after facing problems with unreliable APIs in prod
 Apache 2.0
 Features
  - Monitoring
  - Security
  - Throttling
  - Proxy
  - QoS
  - Decoding
  - Filtering
  - Manipulation
  - Aggregation
  - Cache
 Stateless, no backing datastore
 Config files live on node

### Vulcand
 Good Benchmarks
 Backed by etcd
 Middleware written in Go
 Run at mailgun

### AWS API Gateway
  Doesnt work in eu1.prod

### Azure API Gateway
  Nope

### Express API Gateway
  Open SSoruce
  NodeJS

### ocelot
   .NET

### nginx
   C
   JS Plugin API
   Lua Plugin API

### haproxy
   C

## Managed

### GCP

#### Cloud Endpoints

### AWS

#### API Gateway

# Testing Plan

 - Create three simple apps
   - python
   - java
   - go
  
 - mix of json APIs + rendered template
 - gRPC as extension
   
 - configure and spin up routing scheme
 - extend to support authn at the edge
 - extend to support circuit breaking
 - benchmarks

## Targets

 - Vulcand
 - Krakend
 - Kong
 - Tyk
