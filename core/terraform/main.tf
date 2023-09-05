# This is an example of how to use the module
# You can edit the values of the variables to suit your needs

module "PowerfulVirtualMachine" {
  source  = "git.tnschile.com/sistemas/tf-ovirt-vm/ovirt"
  version = "1.0.0-rc6"

  # Base parameters

  vm_name        = "${var.project_slug}${var.suffix}"
  cluster_id     = var.cluster_id
  template_name  = var.template_name
  storage_domain = var.storage_domain
  comment                   = var.comment

  # Network parameters

  hostname        = var.network_parameters.hostname
  ip              = var.network_parameters.ip
  netmask         = var.network_parameters.netmask
  gateway         = var.network_parameters.gateway
  dns             = var.network_parameters.dns
  network         = var.network_parameters.network
  network_profile = var.network_parameters.network

  # Resource parameters

  cpu_cores                 = var.cpu_cores
  cpu_sockets               = var.cpu_sockets
  cpu_threads               = var.cpu_threads
  memory                    = var.memory
  maximum_memory            = var.memory

  # Optional parameters
  # Values are set to the default values

  type                      = var.type
  placement_policy_affinity = var.placement_policy_affinity
  # placement_policy_host     = var.placement_policy_host
  placement_policy_host_ids = var.placement_policy_host_ids
  stop_behavior             = var.stop_behavior
  os_type                   = var.os_type

}