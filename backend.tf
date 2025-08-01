# Remember to create an S3 bucket on the console 
# then copy and paste the name here on VS-Code 
# key is where we specified the name we want give when stored in state on the S3 bucket
# Please note that configuring a named profile is very impotant for you to initialize this backend.
# Configure for current name for you to deploy properly.

terraform {
  backend "s3" {
    bucket         = "saturday-project-present-remote"
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "us-east-1"
    profile        = "fnwosu"
    dynamodb_table = "Saturday-Project-Present"
  }
}
