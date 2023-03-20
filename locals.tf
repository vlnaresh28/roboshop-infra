locals {
  ## Private Subnets
  #private_subnet_ids = { for k, v in module.vpc["main"].private_subnets : k => tomap({ "id" = v.id, "availability_zone" = v.availability_zone }) }
  #private_subnet_ids = [for k, v in module.vpc["main"].private_subnets : v.id]
  db_subnet_ids = tolist([module.vpc["main"].private_subnets["db-az1"].id, module.vpc["main"].private_subnets["db-az2"].id])
}