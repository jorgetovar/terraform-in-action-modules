module "autoscaling" {
  source      = "./modules/autoscaling"
  namespace   = var.namespace
  ssh_keypair = var.ssh_keypair
  sg          = module.networking.sg
  vpc         = module.networking.vpc
  db_config   = module.database.db_config
}

module "database" {
  source    = "./modules/database"
  namespace = var.namespace
  vpc       = module.networking.vpc
  sg        = module.networking.sg
}

module "networking" {
  source    = "./modules/networking"
  namespace = var.namespace
}