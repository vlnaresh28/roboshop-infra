module "ec2" {
    for_each     = var.instances
    source       = "git::https://github.com/vlnaresh28/tf-module-vpc.git"
    cidr         = each.value ["cidr"]
    env          = var.vpc
 
}