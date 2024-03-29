variable "common_tags" {
    default = {
        project = "roboshop"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "sg_tags" {
  default = {}
}

variable "projectname" {
    default = "roboshop"
  
}
variable "Environment" {
    default = "dev"
}

variable "mongodb_sg_ingress_rules" {
    default = [
        {
            description      = "Allow port 80"
            from_port        = 80 # 0 means all ports
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
            #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
        },

        {
            description      = "Allow port 443"
            from_port        = 443 # 0 means all ports
            to_port          = 443
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
            #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
        }
    ]
  
}
