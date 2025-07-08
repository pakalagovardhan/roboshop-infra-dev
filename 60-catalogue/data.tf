data "aws_ami" "joindevops" {
    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
}

data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}/${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "catalogue_sg_id" {
  name = "/${var.project}/${var.environment}/catalogue_sg_id"
}

data "aws_ssm_parameter" "backend_alb_listener_arn" {
  name = "/${var.project}/${var.environment}/backend_alb_listener_arn"
}
