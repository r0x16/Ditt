# This file indicates the output of the infrastructure created by the module
# This values can be used by other parts of the pipeline
output "vm_name" {
  value = "${var.project_slug}${var.suffix}"
}

output "cluster_id" {
  value = var.cluster_id
}

output "storage_domain" {
  value = var.storage_domain
}

output "ip_address" {
  value = var.network_parameters.ip
}

output "hostname" {
  value = var.network_parameters.hostname
}

output "network" {
  value = var.network_parameters.network
}

output "netmask" {
  value = var.network_parameters.netmask
}

output "gateway" {
  value = var.network_parameters.gateway
}

output "dns" {
  value = var.network_parameters.dns
}

output "network_profile" {
  value = var.network_parameters.network
}

output "guest_nic_name" {
  value = "ens3"
}