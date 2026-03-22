variable "region" {
  description = "region"
}

variable "bucket" {
  description = "bucket where terraform states are stored"
}

variable "key_network" {
  description = "key network"
}

variable "key_webserver" {
  description = "key webserver"
}

variable "ssh_public_key" {
  description = "ssh public key"
}

variable "my_ip_address" {
  description = "cidr block allowed to connect via SSH"
}
