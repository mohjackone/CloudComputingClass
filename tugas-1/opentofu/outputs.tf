output "webserver_ip" {
  value = libvirt_domain.webserver.network_interface[0].addresses[0]
}

output "dbserver_ip" {
  value = libvirt_domain.dbserver.network_interface[0].addresses[0]
}