module "webserver" {
  source = "../../../modules/webserver"

  aws_profile                 = var.aws_profile
  region                      = var.region
  env                         = "dev"
  network_remote_state_bucket = var.bucket
  network_remote_state_key    = var.key_network
  instance_type               = "t2.micro"
  ssh_public_key              = var.ssh_public_key
  cidr_allowed_ssh            = var.my_ip_address
}
