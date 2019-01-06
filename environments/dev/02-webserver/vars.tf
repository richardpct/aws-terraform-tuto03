variable "bucket" {
  description = "bucket where terraform states are stored"
}

variable "dev_network_key" {
  description = "terraform state for dev environment"
}

variable "ssh_public_key" {
  description = "ssh public key"
}

variable "my_ip_address" {
  description = "cidr block allowed to connect via SSH"
}
