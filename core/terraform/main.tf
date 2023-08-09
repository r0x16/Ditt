# This is an example of how to use the module
# You can edit the values of the variables to suit your needs

module "PowerfulVirtualMachine" {
  source  = "git.tnschile.com/sistemas/tf-ovirt-vm/ovirt"
  version = "1.0.0-rc6"

  # Base parameters

  vm_name        = "${var.project_slug}${var.suffix}"
  cluster_id     = var.cluster_id
  template_name  = "Ubuntu22"
  storage_domain = var.storage_domain

  # Network parameters

  hostname        = var.network_parameters.hostname
  ip              = var.network_parameters.ip
  netmask         = var.network_parameters.netmask
  gateway         = var.network_parameters.gateway
  dns             = var.network_parameters.dns
  network         = var.network_parameters.network
  network_profile = var.network_parameters.network

  # Optional parameters
  # Values are set to the default values

  #comment                   = ""
  #cpu_cores                 = 2
  #cpu_sockets               = 1
  #cpu_threads               = 2
  #memory                    = 4
  #maximum_memory            = 4
  #type                      = "server"
  #placement_policy_affinity = "migratable"
  #placement_policy_host     = ""
  #placement_policy_host_ids = []
  #stop_behavior             = "stop"
  #os_type                   = "ubuntu_14_04"

}