provider "azurerm" {
  features {}
  client_id     = var.az_client_id
  client_secret = var.az_client_secret
  tenant_id     = var.az_tenant
}