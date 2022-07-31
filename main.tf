resource "ibm_compute_vm_instance" "terraform-bulk-vms" {
  bulk_vms {
    hostname = "vm1"

    domain = "bar.example.com"
  }
  bulk_vms {
    hostname = "vm2"

    domain = "bar.example.com"
  }

  os_reference_code    = "CENTOS_7_64"
  datacenter           = "dal09"
  network_speed        = 100
  hourly_billing       = true
  private_network_only = true
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
}