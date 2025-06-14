provider "aws" {
    region = var.region
    profile = "terraform-user"

    default_tags {
      tags = {
        Automation = "terraform"
        project = var.project_name
        environment = var.environment
      }
    }
}