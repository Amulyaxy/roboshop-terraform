variable "common_tags" {
    default = {
        project = "roboshop"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "projectname" {
    default = "roboshop"
  
}
variable "Environment" {
    default = "dev"
}
variable "zone_name" {
    default = "awsdevops.website"
}