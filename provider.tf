# Remember to configure the profile name, you can reference the
# screenshot i've prepared incase you need to know how to do so.
# I made a mistake here with the profile, make sure to notice as you go, current name should be changed in other for the module to reference
provider "aws" {
  region  = var.region
  profile = "Whiz_User_39847.81690825"

  default_tags {
    tags = {
      Automation  = "terraform"
      project     = var.project_name
      environment = var.environment
    }
  }
}