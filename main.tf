locals {
  region       = var.region
  project_name = var.project_name
  environment  = var.environment
}

# create a vpc module
# Working on this specific part for over 1hr . so remember to modify the template in order to download it using terraform from your github repo.
# Note that what was on AOS for the source is different from what am currently working with as hashicorp has make changes to how it works.


module "vpc" {
  source                       = "git::https://github.com/favours-github/VPC-Module-For-Saturday.git//vpc"
  region                       = local.region
  project_name                 = local.project_name
  environment                  = local.environment
  vpc_cidr                     = var.vpc_cidr
  public_subnet_az1_cidr       = var.public_subnet_az1_cidr
  public_subnet_az2_cidr       = var.public_subnet_az2_cidr
  private_app_subnet_az1_cidr  = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr  = var.private_app_subnet_az2_cidr
  private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr = var.private_app_subnet_az2_cidr
}

# create a natgateway 

module "natgateway" {
  source                     = "git::https://github.com/favours-github/VPC-Module-For-Saturday.git//natgateway"
  project_name               = local.project_name
  environment                = local.environment
  vpc_id                     = module.vpc.vpc_id
  internet_gateway_id        = module.vpc.internet_gateway_id
  public_subnet_az1_id       = module.vpc.public_subnet_az1_id
  public_subnet_az2_id       = module.vpc.public_subnet_az2_id
  private_app_subnet_az1_id  = module.vpc.private_app_subnet_az1_id
  private_data_subnet_az1_id = module.vpc.private_data_subnet_az1_id
  private_app_subnet_az2_id  = module.vpc.private_app_subnet_az2_id
  private_data_subnet_az2_id = module.vpc.private_data_subnet_az2_id
}


# Create security groups

module "natgateway" {
  source                     = "git::https://github.com/favours-github/VPC-Module-For-Saturday.git//SecurityGroups"
  project_name               = local.project_name
  environment                = local.environment
  vpc_id                     = module.vpc.vpc_id
  ssh_ip                     = var.ssh_ip
  }