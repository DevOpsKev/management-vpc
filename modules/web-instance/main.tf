provider "aws" {
  region     = var.aws_region
}


resource "aws_instance" "web_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.subnet_public_id
  vpc_security_group_ids = var.security_group_ids
  key_name = var.key_pair_name
  tags = {
		Environment = var.environment_tag
    GIT-BRANCH = var.git_branch
    GIT-HASH = var.git_hash
    DEPLOY-STATUS = var.deploy_status
	}
}

resource "aws_eip" "web_instance_eip" {
  vpc       = true
  instance  = aws_instance.web_instance.id

  tags = {
        Environment = var.environment_tag
        GIT-BRANCH = var.git_branch
        GIT-HASH = var.git_hash
        DEPLOY-STATUS = var.deploy_status
  }
}