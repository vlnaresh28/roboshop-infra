module "vpc" {
  source              = "git::https://github.com/vlnaresh28/tf-module-vpc.git"
  env                 = var.env

  for_each        = var.vpc
  vpc_cidr        = each.value["vpc_cidr"]
 
}

//module "docdb" {
//  source              = "git::https://github.com/vlnaresh28/tf-module-docdb.git"
//  env                 = var.env
//  tags                = var.tags
//
//  for_each        = var.docdb
//  engine        = each.value["engine"]
//  backup_retention_period        = each.value["backup_retention_period"]
//  preferred_backup_window        = each.value["preferred_backup_window"]
//  skip_final_snapshot        = each.value["skip_final_snapshot"]
//  engine_version        = each.value["engine_version"]
//  subnet_ids
//
//}


//output "vpc" {
 // value = local.db_subnet_ids
//}