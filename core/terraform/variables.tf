# Description: This file contains the variables used by the Terraform configuration

# Variables used to connect to the oVirt engine API
variable "ovirt_url" {
  type        = string
  description = "The URL of the oVirt engine API"
}

variable "ovirt_username" {
  type        = string
  description = "The username to use for the oVirt engine API"
}

variable "ovirt_password" {
  type        = string
  description = "The password to use for the oVirt engine API"
}

variable "ovirt_cafile" {
  type        = string
  description = "The path to the CA file to use for the oVirt engine API"
}

# Variables used to create the VM
variable "project_slug" {
  type        = string
  description = "The slug name of the project to use for the VM"
  default     = "undefined"
}

variable "suffix" {
  type        = string
  description = "The suffix name of the project to use for the VM"
  default     = ""
}

variable "comment" {
  type        = string
  description = "A comment for the VM"
  default     = ""
}

variable "cluster_id" {
  type        = string
  description = "The ID of the cluster where the VM will be created"
}

variable "storage_domain" {
  type        = string
  description = "The name of the storage domain where the VM will be created"
}

variable "network_parameters" {
  type        = map(string)
  description = "The network parameters for the VM"
  default = {
    hostname = "undefined"
    network  = "ovirtmgmt"
    ip       = "undefined"
    netmask  = "undefined"
    gateway  = "undefined"
    dns      = "undefined"
  }
}