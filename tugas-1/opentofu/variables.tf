variable "domain_name" {
  description = "Domain name for the web server"
  type        = string
  default     = "example.com"
}

variable "mysql_root_password" {
  description = "MySQL root password"
  type        = string
  sensitive   = true
}