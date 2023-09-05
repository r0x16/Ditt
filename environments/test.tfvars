# Placement parameters

suffix         = "_test"
cluster_id     = "be7120a2-b91b-11eb-9fca-001e0bd91586"
storage_domain = "ds_GITOPS_L304_HUAWEI5300"

# VM Resources parameters
# Total vCPU = cpu_sockets * cpu_cores

cpu_sockets = 1 # Processor count
cpu_cores = 2 # Cores per socket
memory = 4 # in GB

# VM Network parameters
network_parameters = {
  hostname = "localhost.localdomain"
  network  = "ovirtmgmt"
  ip       = "10.248.228.107" # replace with your own IP
  netmask  = "255.255.255.0"
  gateway  = "10.248.228.254"
  dns      = "8.8.8.8"
}

# Optional parameters
# Values indicated below are the default values

# cpu_threads = 1 # Threads per core
# comment = "Created by Ditt" # Comment for the VM
# type                      = "server"
# placement_policy_affinity = "migratable"
# placement_policy_host_ids = []
# stop_behavior             = "stop"
# os_type                   = "ubuntu_14_04"