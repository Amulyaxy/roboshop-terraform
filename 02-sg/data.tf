data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.projectname}/${var.Environment}/vpc_id"
}
data "aws_vpc" "name" {
    default = true
  
}