output "ip_address" {
  value       = digitalocean_droplet.jconf_dom_2023.ipv4_address
  description = "The public IP address of your Droplet application."
}
