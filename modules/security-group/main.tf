provider "aws" {
  region     = var.aws_region
}

resource "aws_security_group" "sg_22" {
  name = "sg_22"
  vpc_id = var.vpc_id

  # SSH access from the VPC
  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = var.ingress_CIDR_block
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.egress_CIDR_block
  }

  tags = {
    Name = "sg_22"
    Description = "Terraform Security Group"
    Environment = var.environment_tag
  }
}

resource "aws_security_group" "sg_80" {
  name = "sg_80"
  vpc_id = var.vpc_id

  ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = var.ingress_CIDR_block
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks =  var.egress_CIDR_block
  }

  tags = {

    Name = "sg_80"
    GIT-BRANCH = var.git_branch
    GIT-HASH = var.git_hash
    DEPLOY-STATUS = var.deploy_status
  }
}