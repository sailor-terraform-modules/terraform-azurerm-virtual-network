variable "resource_group_name" {
  description = "Resource group into which vnet is created"
  type        = string
}

variable "location" {
  description = "Location of the vnet"
  type        = string
}

variable "vnet_cidr_ranges" {
  description = "Address space of the vnet"
  type        = list(string)
}

variable "vnet_name" {
  description = "Name of the vnet"
  type        = string
}
variable "enforce_private_link_endpoint_network_policies" {
  type        = bool
  description = "Enable or Disable network policies for the private endpoint on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true."
  default     = true
}

variable "nsg_name" {
  type        = string
  description = "name of the azurerm_network_security_group"
}

variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "network" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "subnet_cidr_ranges" {
  type        = list(string)
  description = "The address prefixes to use for the subnet."
}

variable "nsg_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  description = "values for each NSG rule"
}