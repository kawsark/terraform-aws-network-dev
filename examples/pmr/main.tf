variable "owner" {
  description = "An Owner tag"
  default     = "demouser"
}

variable "security_group_ingress" {
  description = "trusted range for SSH access"
  default     = ["1.1.1.1/32"]
}

variable "aws_region" {
  default = "us-east-2"
}

provider "aws" {
  # AWS provider configured via environment variables: AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
  region = var.aws_region
}

module "aws_network_dev" {
  source = "app.terraform.io/kawsar-org/network-dev/aws"

  #  source = "../../"
  aws_region             = var.aws_region
  owner                  = var.owner
  security_group_ingress = var.security_group_ingress
}

# Exposing outputs from aws_network_dev module
output "security_group_id" {
  value = module.aws_network_dev.security_group_id
}

output "public_subnet1_id" {
  value = module.aws_network_dev.public_subnet1_id
}

output "public_subnet2_id" {
  value = module.aws_network_dev.public_subnet2_id
}

output "private_subnet1_id" {
  value = module.aws_network_dev.private_subnet1_id
}

output "private_subnet2_id" {
  value = module.aws_network_dev.private_subnet2_id
}

