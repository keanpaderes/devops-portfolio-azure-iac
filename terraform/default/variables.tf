# Provider Configuration
variable "az_client_id" {
  description = "The Client ID of the Service Principal to use for authentication."
  type        = string
}

variable "az_client_secret" {
  description = "The Client Secret of the Service Principal to use for authentication."
  type        = string
  sensitive   = true
}

variable "az_tenant" {
  description = "The Tenant ID of the Service Principal to use for authentication."
  type        = string
}

# Remote State Configuration
variable "az_rs_resource_group_name" {
  description = "The name of the Azure Resource Group to use for remote state."
  type        = string
  default     = "dop_tfstate"
  
}
variable "az_rs_storage_account_name" {
  description = "The name of the Azure Storage Account to use for remote state."
  type        = string
  default     = "tfstate12290"
}

variable "az_rs_storage_account_key" {
  description = "The access key for the Azure Storage Account to use for remote state."
  type        = string
  sensitive   = true
}

variable "az_rs_container_name" {
  description = "The name of the Azure Storage Container to use for remote state."
  type        = string
  default     = "tfstate"
}

variable "project_prefix" {
  description = "The prefix to use for all resources in the project."
  type        = string
  default     = "dop"
}

variable "project_location" {
  description = "The Azure location where resources will be created."
  type        = string
  default     = "Southeast Asia"
}