terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }

  # Use this block to utilize remote state in Azure Storage
  backend "azurerm" {
    resource_group_name  = "dop_tfstate"
    storage_account_name = "tfstate12290"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  # Use this block to utilize local state
  # backend "local" {
  #   path = "terraform.tfstate"
  # }
}
