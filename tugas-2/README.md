# Docker Container Cases

This repository contains four different cases demonstrating Docker container orchestration with docker-compose.

## Case 1: Basic Multi-Container Setup
- Two nginx web servers running on different ports
- Simple static content served from each server
- Ports 8001 and 8002 exposed

## Case 2: Load Balancer Setup
- Two backend web servers
- Nginx load balancer distributing traffic
- Single entry point on port 8000

## Case 3: Extended Load Balancer
- Three backend web servers
- Nginx load balancer distributing traffic
- Enhanced scalability

## Case 4: Advanced Setup with Monitoring
- Three backend web servers with resource limits
- Advanced load balancer configuration with health checks
- cAdvisor monitoring integration
- Least connections load balancing algorithm
- Enhanced logging and status monitoring

### Running the Cases

For each case, navigate to the respective directory and run:

```bash
docker-compose up -d
```

Access the services:
- Case 1: http://localhost:8001 and http://localhost:8002
- Case 2: http://localhost:8000
- Case 3: http://localhost:8000
- Case 4: 
  - Web: http://localhost:8000
  - Monitoring: http://localhost:8080

### Case 4 Features

1. Resource Management
   - CPU and memory limits for all containers
   - Prevents resource exhaustion

2. Advanced Load Balancing
   - Least connections algorithm
   - Health checks
   - Enhanced header forwarding

3. Monitoring
   - cAdvisor integration for container monitoring
   - Nginx status page
   - Health check endpoints

4. Enhanced Logging
   - Real IP forwarding
   - Host header preservation