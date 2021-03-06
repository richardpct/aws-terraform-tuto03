module "webserver" {
  source = "../../../modules/webserver"

  region                      = "eu-west-3"
  env                         = "staging"
  network_remote_state_bucket = var.bucket
  network_remote_state_key    = var.staging_network_key
  instance_type               = "t2.micro"
  image_id                    = "ami-0ebc281c20e89ba4b"  //Amazon Linux 2018
  ssh_public_key              = var.ssh_public_key
  cidr_allowed_ssh            = var.my_ip_address
}
