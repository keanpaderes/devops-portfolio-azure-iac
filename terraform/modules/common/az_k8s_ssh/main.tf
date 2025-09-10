terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
  }
}

resource "random_pet" "ssh_key_name" {
  prefix    = "${var.project_prefix}_ssh"
  separator = "_"
}

resource "azapi_resource" "ssh_public_key" {
  depends_on = [random_pet.ssh_key_name]
  provider   = azapi
  type       = "Microsoft.Compute/sshPublicKeys@2022-11-01"
  name       = random_pet.ssh_key_name.id
  location   = var.rg_location
  parent_id  = var.rg_id
}

resource "azapi_resource_action" "ssh_public_key_gen" {
  depends_on  = [azapi_resource.ssh_public_key]
  provider    = azapi
  type        = "Microsoft.Compute/sshPublicKeys@2022-11-01"
  resource_id = azapi_resource.ssh_public_key.id
  action      = "generateKeyPair"
  method      = "POST"

  response_export_values = ["publicKey", "privateKey"]
}