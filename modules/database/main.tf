resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@/'\""
}

resource "aws_db_instance" "database" {
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  identifier             = "${var.namespace}-db-instance"
  db_name                = "pets"
  username               = "admin"
  password               = random_password.password.result
  db_subnet_group_name   = var.vpc.database_subnet_group_name
  vpc_security_group_ids = [var.sg.db]
  skip_final_snapshot    = true
}