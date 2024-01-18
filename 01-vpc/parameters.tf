resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.projectname}/${var.Environment}/vpc_id"
    type = "String"
    value = module.robosho.vpc_id
}
resource "aws_ssm_parameter" "public_subnet-ids" {
    name = "/${var.projectname}/${var.Environment}/public_subnet-ids"
    type = "StringList"
    value = join(",",module.robosho.public_subnet_ids)
}
resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.projectname}/${var.Environment}/private_subnet_ids"
    type = "StringList"
    value = join(",", module.robosho.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
    name = "/${var.projectname}/${var.Environment}/database_subnet_ids"
    type = "StringList"
    value = join(",", module.robosho.database_subnet_ids)
}
# output "public_subnet_ids" {
#   value = module.robosho.public_subnet_ids
  
# }