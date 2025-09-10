variable "project_prefix" {
  type        = string
  description = "The prefix to be used on all resources as a tag and part of the resource name."
}

variable "rg_id" {
  type        = string
  description = "The ID of the resource group."
}

variable "rg_location" {
  type        = string
  description = "The location where the resources will be created."
}