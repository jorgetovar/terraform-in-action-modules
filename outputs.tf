output "db_password" {
  value = module.database.db_config.password
  sensitive = true
}

output "lb_dns_name" {
  value = module.autoscaling.lbs_dns_name
}