variable "rg_name" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "rg_location" {
  type        = string
  description = "Location of the resource group."
}

variable "k8s_node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
}

variable "msi_id" {
  type        = string
  description = "The Managed Service Identity ID. Set this value if you're running this example using Managed Identity as the authentication method."
  default     = null
}

variable "k8s_username" {
  type        = string
  description = "The admin username for the new cluster."
}

variable "ssh_public_key_data" {
  type        = string
  description = "The SSH public key data to authenticate with the Linux nodes."
}