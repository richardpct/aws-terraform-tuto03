module "network" {
  source = "../../../modules/network"

  region         = "eu-west-3"
  env            = "dev"
  vpc_cidr_block = "10.0.0.0/16"
  subnet_public  = "10.0.0.0/24"
}
