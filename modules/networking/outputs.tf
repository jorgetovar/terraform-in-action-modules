output "vpc" {
  value = module.vpc #A
}

output "sg" {
  value = {
    #B
    lb     = module.lb_sg.security_group.id #B
    db     = module.db_sg.security_group.id #B
    web_server = module.web_server_sg.security_group.id #B
  } #B
}
