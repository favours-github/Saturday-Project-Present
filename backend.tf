terraform {
  backend "s3" {
    bucket = "saturday-project-present-remote"
    key = "terraform-module/rentzone/terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-user"
    dynamodb_table = "Saturday-Project-Present"
  }
}