module "ssh_keys" {
  source = "./modules/ssh_keys"
  hcloud_token = var.hcloud_token
}


module "servers" {
  source       = "./modules/servers"
  hcloud_token = var.hcloud_token
  image_name   = var.image_name
  server_type  = var.server_type
  location     = var.location
  depends_on   = [module.ssh_keys]
}



module "monitoring" {
  source = "./modules/Monitoring"
  hcloud_token = var.hcloud_token
}