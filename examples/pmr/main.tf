variable "owner" {
  description = "An Owner tag"
  default = "kawsar@hashicorp.com"
}

variable "security_group_ingress" {
 description = "trusted range for SSH access"
 default = ["1.1.1.1/32"]
}

variable "aws_region" {
  default = "us-east-2"
}

provider "aws" {
  # AWS provider configured via environment variables: AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
  region = "${var.aws_region}"
}

module "aws_network_dev" {
#  source = "app.terraform.io/kawsar-org-dev/network-dev/aws"
  source = "../../"
  aws_region = "${var.aws_region}"
  owner = "${var.owner}"
  security_group_ingress = "${var.security_group_ingress}"
}
