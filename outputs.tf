output "hostname" {
  value = equinix_metal_device.metal.*.hostname
}
output "id" {
  value = equinix_metal_device.metal.*.id
}
output "pip" {
  value = equinix_metal_device.metal.*.access_public_ipv4
}
output "bond_0" {
  value = equinix_metal_device.metal.*.ports
}
