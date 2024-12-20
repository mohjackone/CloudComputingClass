# Cloud-init configuration for webserver
resource "libvirt_cloudinit_disk" "webserver_init" {
  name = "webserver-init.iso"
  user_data = templatefile("${path.module}/cloud-init/webserver.yml", {
    ssh_public_key = file("~/.ssh/id_rsa.pub")
  })
}

# Cloud-init configuration for dbserver
resource "libvirt_cloudinit_disk" "dbserver_init" {
  name = "dbserver-init.iso"
  user_data = templatefile("${path.module}/cloud-init/dbserver.yml", {
    ssh_public_key = file("~/.ssh/id_rsa.pub")
  })
}