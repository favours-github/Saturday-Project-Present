locals {
  region = var.region
  project_name = var.project_name
  environment = var.environment
}

module "vpc" {
  source = "git@github.com:favours-github/VPC-Module-For-Saturday.git//vpc"
  
}

