module "vpc" {
  source = "git::https://github.com/vlnaresh28/tf-module-vpc.git"
  for_each = var.vpc
 
}