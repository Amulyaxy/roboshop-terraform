data "aws_ami" "centos8"{
    owners = ["973714476881"]
    most_recent = true

    filter {
      name = "name"
      values = ["Centos-8-DevOps-Practice"]
    }

    filter {
      name = "root-device-type"
      values = ["ebs"]
    }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
}

data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.projectname}/${var.Environment}/mongodb_sg_id"
}
data "aws_ssm_parameter" "redis_sg_id" {
  name = "/${var.projectname}/${var.Environment}/redis_sg_id"
}

data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.projectname}/${var.Environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "rabbitmq_sg_id" {
  name = "/${var.projectname}/${var.Environment}/rabbitmq_sg_id"
}


data "aws_ssm_parameter" "catalogue_sg_id" {
  name = "/${var.projectname}/${var.Environment}/catalogue_sg_id"
}

data "aws_ssm_parameter" "user_sg_id" {
  name = "/${var.projectname}/${var.Environment}/user_sg_id"
}

data "aws_ssm_parameter" "shipping_sg_id" {
  name = "/${var.projectname}/${var.Environment}/shipping_sg_id"
}

data "aws_ssm_parameter" "cart_sg_id" {
  name = "/${var.projectname}/${var.Environment}/cart_sg_id"
}

data "aws_ssm_parameter" "payment_sg_id" {
  name = "/${var.projectname}/${var.Environment}/payment_sg_id"
}


data "aws_ssm_parameter" "web_sg_id" {
  name = "/${var.projectname}/${var.Environment}/web_sg_id"
}
data "aws_ssm_parameter" "database_subnet_ids" {
  name = "/${var.projectname}/${var.Environment}/database_subnet_ids"
}
data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.projectname}/${var.Environment}/database_subnet_ids"
}
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.projectname}/${var.Environment}/database_subnet_ids"
}
data "aws_ssm_parameter" "vpn_sg_id" {
  name = "/${var.projectname}/${var.Environment}/vpn_sg_id"
}
data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "selected" {
  vpc_id = data.aws_vpc.default.id
  availability_zone = "us-east-1a"
}