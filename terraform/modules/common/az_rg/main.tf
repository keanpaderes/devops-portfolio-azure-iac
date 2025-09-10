resource "azurerm_resource_group" "rg" {
  name     = "${var.project_prefix}_rg"
  location = var.project_location
}