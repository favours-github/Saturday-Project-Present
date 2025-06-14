# Remember to create an S3 bucket on the console 
# then copy and paste the name here on VS-Code 

terraform {
  backend "s3" {
    bucket = "saturday-project-present-remote"
    key = "terraform-module/rentzone/terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-user"
    dynamodb_table = "Saturday-Project-Present"
  }
}