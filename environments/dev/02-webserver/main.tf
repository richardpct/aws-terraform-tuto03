terraform {
  backend "s3" {}
}

module "webserver" {
  source = "../../../modules/webserver"

  region                      = "eu-west-3"
  env                         = "dev"
  network_remote_state_bucket = var.bucket
  network_remote_state_key    = var.dev_network_key
  instance_type               = "t2.micro"
  image_id                    = "ami-0dc12d28e8595864f"  //ubuntu 18.10
  ssh_public_key              = var.ssh_public_key
  cidr_allowed_ssh            = var.my_ip_address
}
