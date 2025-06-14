# Remember to configure the profile name, you can reference the
# screenshot i've prepared incase you need to know how to do so.

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