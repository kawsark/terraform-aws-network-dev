variable "environment" {
  default = "dev"
}

variable "owner" {
  description = "An Owner tag"
  default     = "tfdemouser"
}

variable "aws_region" {
  description = "The AWS region this infrastructure should be provisioned in"
  default     = "us-east-2"
}

variable "security_group_ingress" {
  description = "Ingress CIDR to allow SSH access. Warning: setting 0.0.0.0/0 is a bad idea."
  type        = list(string)
}
