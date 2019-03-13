variable "owner" {
  description = "An Owner tag"
}

variable "aws_region" {
  description = "The AWS region this infrastructure should be provisioned in"
  default     = "us-east-2"
}

variable "security_group_ingress" {
  description = "Ingress CIDR to allow SSH access. Warning: setting 0.0.0.0/0 is a bad idea."
  type = "list"
}

variable "environment" {
  default = "dev"
}

variable "ttl" {
  description = "A desired time to live (not enforced via terraform)"
  default     = "24"
}

variable "vpc_cidr_block" {
  default = "192.168.0.0/16"
}

variable "public_subnet_1_block" {
  default = "192.168.0.0/21"
}

variable "public_subnet_2_block" {
  default = "192.168.8.0/21"
}

variable "private_subnet_1_block" {
  default = "192.168.16.0/21"
}

variable "private_subnet_2_block" {
  default = "192.168.24.0/21"
}
