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

# Optional variables
variable "cpu_cores" {
  type        = number
  description = "The number of CPU cores for the VM"
  default     = 2
}

variable "cpu_sockets" {
  type        = number
  description = "The number of CPU sockets for the VM"
  default     = 1
}

variable "cpu_threads" {
  type        = number
  description = "The number of CPU threads for the VM"
  default     = 1
}

variable "memory" {
  type        = number
  description = "The amount of memory for the VM"
  default     = 4
}

#type                      = "server"
  #placement_policy_affinity = "migratable"
  #placement_policy_host     = ""
  #placement_policy_host_ids = []
  #stop_behavior             = "stop"
  #os_type                   = "ubuntu_14_04"

variable "type" {
  type        = string
  description = "The type of the VM"
  default     = "server"
}

variable "placement_policy_affinity" {
  type        = string
  description = "The placement policy affinity of the VM"
  default     = "migratable"
}

variable "placement_policy_host_ids" {
  type        = list(string)
  description = "The placement policy host IDs of the VM"
  default     = []
}

variable "stop_behavior" {
  type        = string
  description = "The stop behavior of the VM"
  default     = "stop"
}

variable "os_type" {
  type        = string
  description = "The OS type of the VM"
  default     = "ubuntu_14_04"
}

variable "template_name" {
  type        = string
  description = "The name of the template to use for the VM"
  default = "Ubuntu22"
}