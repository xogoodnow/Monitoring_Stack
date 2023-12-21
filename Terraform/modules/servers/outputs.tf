
output "monitoring_ips" {
  value = hcloud_server.monitoring[*].ipv4_address
}


