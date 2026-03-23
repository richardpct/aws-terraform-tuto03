module "network" {
  source = "../../../modules/network"

  aws_profile    = var.aws_profile
  region         = var.region
  env            = "dev"
  vpc_cidr_block = "10.0.0.0/16"
  subnet_public  = "10.0.0.0/24"
}
