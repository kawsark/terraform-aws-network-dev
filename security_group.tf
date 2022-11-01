resource "aws_security_group" "mvd-sg" {
  vpc_id      = module.vpc.vpc_id
  description = "security group that allows ssh and all egress traffic"

  tags = {
    Name = "mvd-sg"
    Env  = var.environment
  }
}

resource "aws_security_group_rule" "egress_allow_all" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.mvd-sg.id
}

resource "aws_security_group_rule" "ingress_allow_self" {
  type      = "ingress"
  from_port = 0
  to_port   = 0
  protocol  = -1
  self      = true

  security_group_id = aws_security_group.mvd-sg.id
}

resource "aws_security_group_rule" "ingress_allow_ssh" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = var.security_group_ingress
  security_group_id = aws_security_group.mvd-sg.id
}
