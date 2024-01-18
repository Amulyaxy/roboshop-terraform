locals {
  ec2_name           = "${var.projectname}-${var.Environment}"
  database_subnet_id = element(split(",",data.aws_ssm_parameter.database_subnet_ids.value),0)
  private_subnet_id = element(split(",",data.aws_ssm_parameter.database_subnet_ids.value),0)
  public_subnet_id = element(split(",",data.aws_ssm_parameter.database_subnet_ids.value),0)
}