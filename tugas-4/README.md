# Docker Compose Examples

This repository contains five different cases demonstrating various Docker Compose configurations.

## Case 1: Simple Nginx Server
- Basic Nginx web server
- Static HTML content
- Port: 8080

## Case 2: Nginx with MySQL
- Nginx web server
- MySQL database
- Persistent MySQL data
- Ports: 8081 (Nginx)

## Case 3: Nginx, MySQL, and phpMyAdmin
- Nginx web server
- MySQL database
- phpMyAdmin interface
- Persistent MySQL data
- Ports: 8082 (Nginx), 8083 (phpMyAdmin)

## Case 4: PHP, Apache, MySQL, and phpMyAdmin
- PHP Apache web server
- MySQL database
- phpMyAdmin interface
- Custom PHP application with MySQL connection
- Ports: 8084 (Apache), 8085 (phpMyAdmin)

## Case 5: Advanced Stack with Monitoring
- PHP Apache web server with Redis support
- MySQL database
- Redis cache
- phpMyAdmin interface
- Grafana for monitoring
- Page view counter using Redis
- Ports: 8086 (Apache), 8087 (phpMyAdmin), 3000 (Grafana), 6379 (Redis)

## Running the Examples

For each case, navigate to its directory and run:

```bash
docker-compose up -d
```

To stop the services:

```bash
docker-compose down
```

## Notes
- Each case builds upon the previous one, adding more complexity and features
- Case 5 introduces monitoring capabilities and caching
- All configurations use persistent volumes where appropriate
- Default credentials are for demonstration purposes only