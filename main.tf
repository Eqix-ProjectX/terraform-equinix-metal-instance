resource "equinix_metal_device" "metal" {
  count            = var.nums
  hostname         = "metal-${var.metro}-node-${count.index + 1}"
  plan             = var.plan
  metro            = var.metro
  operating_system = var.operating_system
  billing_cycle    = var.billing_cycle
  project_id       = var.project_id
  user_data        = local.config
  lifecycle {
    prevent_destroy = true
  }
}

resource "equinix_metal_device_network_type" "hybrid-bonded" {
  count     = var.nums
  device_id = equinix_metal_device.metal[count.index].id
  type      = "hybrid-bonded"
}

locals {
  config = <<-EOF
  #cloud-config
  package_update: true
  package_upgrade: true
  packages:
    - python3-pip
  runcmd:
    - apt update -y
    - sudo apt install python3-pip
    - pip install -U pip
    - pip install netmiko
  EOF
}
