# terraform-aws-network-dev
A simple AWS network with 2 public and 2 private subnets

# Steps to test:
```
# Export AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables
export TF_VAR_owner="owner"
export TF_VAR_security_group_ingress="[\"$(curl -s http://whatismyip.akamai.com)/32\"]"
export TF_VAR_aws_region="us-east-2"
terraform plan
terraform apply
```
