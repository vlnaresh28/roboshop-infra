module "vpc" {
  for_each      = var.vpc
  source = "git::https://github.com/vlnaresh28/tf-module-vpc.git"
 
