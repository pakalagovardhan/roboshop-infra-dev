data "aws_ami" "joindevops" {
    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
}



data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.project}/${var.environment}/mongodb_sg_id"
}

data "aws_ssm_parameter" "redis_sg_id" {
  name = "/${var.project}/${var.environment}/redis_sg_id"
}

data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.project}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "rabbitmq_sg_id" {
  name = "/${var.project}/${var.environment}/rabbitmq_sg_id"
}

data "aws_ssm_parameter" "database_subnet_ids" {
  name = "/${var.project}/${var.environment}/database_subnet_ids"
}

