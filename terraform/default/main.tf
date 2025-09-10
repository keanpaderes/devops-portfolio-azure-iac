module "az_rg" {
  source           = "../modules/common/az_rg"
  project_prefix   = var.project_prefix
  project_location = var.project_location
}

module "az_k8s_ssh" {
  source         = "../modules/common/az_k8s_ssh"
  project_prefix = var.project_prefix
  rg_id          = module.az_rg.rg_id
  rg_location    = module.az_rg.rg_location
}

module "az_k8s" {
  source              = "../modules/common/az_k8s"
  rg_name             = module.az_rg.rg_name
  rg_location         = module.az_rg.rg_location
  k8s_node_count      = 3
  k8s_username        = "azureadmin"
  ssh_public_key_data = module.az_k8s_ssh.key_data
}