terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

# Base OS Volume
resource "libvirt_volume" "ubuntu_base" {
  name   = "ubuntu-base"
  source = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"
  format = "qcow2"
}

# Webserver Resources
resource "libvirt_volume" "webserver_volume" {
  name           = "webserver-volume"
  base_volume_id = libvirt_volume.ubuntu_base.id
  size           = 20 * 1024 * 1024 * 1024 # 20GB
}

resource "libvirt_domain" "webserver" {
  name   = "webserver"
  memory = "2048"
  vcpu   = 2

  network_interface {
    network_name = "default"
  }

  disk {
    volume_id = libvirt_volume.webserver_volume.id
  }

  cloudinit = libvirt_cloudinit_disk.webserver_init.id
}

# Database Server Resources
resource "libvirt_volume" "dbserver_volume" {
  name           = "dbserver-volume"
  base_volume_id = libvirt_volume.ubuntu_base.id
  size           = 40 * 1024 * 1024 * 1024 # 40GB
}

resource "libvirt_domain" "dbserver" {
  name   = "dbserver"
  memory = "4096"
  vcpu   = 2

  network_interface {
    network_name = "default"
  }

  disk {
    volume_id = libvirt_volume.dbserver_volume.id
  }

  cloudinit = libvirt_cloudinit_disk.dbserver_init.id
}