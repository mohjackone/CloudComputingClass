# Docker Compose Examples

This repository contains five different Docker Compose configurations demonstrating various multi-container setups.

## Case 1: Simple Nginx Web Server
- Basic Nginx web server setup
- Static content served from mounted volume

## Case 2: Nginx + MySQL
- Nginx web server
- MySQL database with persistent storage
- Environment variables for MySQL configuration

## Case 3: Nginx + PHP-FPM + MySQL
- Nginx web server
- PHP-FPM for PHP processing
- MySQL database with persistent storage
- Proper container dependencies

## Case 4: Nginx + PHP-FPM + MySQL + phpMyAdmin
- Nginx web server
- PHP-FPM for PHP processing
- MySQL database with persistent storage
- phpMyAdmin for database management
- Proper container dependencies

## Case 5: Extended Stack (New Implementation)
- All components from Case 4
- Added Redis for caching
- Added Elasticsearch for search functionality
- Additional persistent storage for Elasticsearch
- Enhanced container orchestration

### How to Run

For each case, navigate to the respective directory and run:

```bash
docker-compose up -d
```

### Accessing Services

- Web Server: http://localhost:8080
- phpMyAdmin (Cases 4 & 5): http://localhost:8081
- Elasticsearch (Case 5): http://localhost:9200
- Redis (Case 5): localhost:6379

### Notes
- Each case builds upon the previous one, adding more services and complexity
- All configurations use proper volume mounting for persistence
- Environment variables are configured for security
- Services are properly linked with dependencies