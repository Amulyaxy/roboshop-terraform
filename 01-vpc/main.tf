module "robosho" {
    source = "../../terraform-aws-vpc"
    #source = "git::https://github.com/Amulyaxy/terraform-aws-vpc.git?ref=main"
    projectname = var.projectname
    Environment = var.Environment
    comman_tags = var.common_tags
    vpc_tags = var.vpc_tags
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr  = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
    #peering
    is_peering_required = var.is_peering_required
}