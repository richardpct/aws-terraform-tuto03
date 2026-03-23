module "network" {
  source = "../../../modules/network"

  region         = "eu-west-3"
  env            = "staging"
  vpc_cidr_block = "10.1.0.0/16"
  subnet_public  = "10.1.0.0/24"
}
