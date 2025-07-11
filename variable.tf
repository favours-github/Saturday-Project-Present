variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "The deployment environment dev"
  type        = string
}

# VPC Variables
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "CIDR block for public subnet in availability zone 1"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "CIDR block for public subnet in availability zone 2"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "CIDR block for private application subnet in availability zone 1"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  description = "CIDR block for private application subnet in availability zone 2"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  description = "CIDR block for private data subnet in availability zone 1"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  description = "CIDR block for private data subnet in availability zone 2"
  type        = string
}


