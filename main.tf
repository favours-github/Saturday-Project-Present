locals {
  region = var.region
  project_name = var.project_name
  environment = var.environment
}

module "vpc" {
  source = "https://github.com/favours-github/VPC-Module-For-Saturday.git"
}