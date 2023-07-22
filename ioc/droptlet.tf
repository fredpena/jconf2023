data "digitalocean_ssh_key" "fredpena_ssh_key" {
  name = "fredpena_ssh_key"
}

resource "digitalocean_droplet" "jconf_dom_2023" {
  image      = "debian-11-x64"
  name       = "JConfDom2023"
  region     = "nyc1"
  size       = "s-1vcpu-2gb"
  monitoring = true
  ssh_keys = [
    data.digitalocean_ssh_key.fredpena_ssh_key.id,
  ]
  # connection {
  #     host = self.ipv4_address
  #     user = "root"
  #     type = "ssh"
  #     private_key = file("~/.ssh/id_rsa")
  #     timeout = "2m"
  # }
  # provisioner "remote-exec" {
  #     inline = [
  #     "export PATH=$PATH:/usr/bin",
  #     "sudo apt update"
  #     ]
  # }
}
