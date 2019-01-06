variable "bucket" {
  description = "bucket where terraform states are stored"
}

variable "staging_network_key" {
  description = "terraform state for staging environment"
}

variable "ssh_public_key" {
  description = "ssh public key"
}

variable "my_ip_address" {
  description = "cidr block allowed to connect via SSH"
}
