# ----------------------------------------------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# ----------------------------------------------------------------------------------------------------------------------
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "devonnl-elsevier"

    workspaces {
      name = "management-vpc"
    }
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# CONFIGURE AWS PROVIDER
# ----------------------------------------------------------------------------------------------------------------------
provider "aws" {
  region = "us-east-1"
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE NETWORK TO HOST ALL RESOURCES DESCRIBED IN THIS INFRASTRUCTURE
# ---------------------------------------------------------------------------------------------------------------------

module "networkModule" {
  source                                      = "./modules/network"
  name_preffix                                = "base"
  vpc_cidr_block                              = "192.168.0.0/16"
  availability_zones                          = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
  public_subnets_cidrs_per_availability_zone  = ["192.168.0.0/19", "192.168.32.0/19", "192.168.64.0/19", "192.168.96.0/19"]
  private_subnets_cidrs_per_availability_zone = ["192.168.128.0/19", "192.168.160.0/19", "192.168.192.0/19", "192.168.224.0/19"]

}


# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP
# ---------------------------------------------------------------------------------------------------------------------

module "securityGroupModule" {
  source          = "./modules/security-group"
  aws_region      = "us-east-1"
  vpc_id          = module.networkModule.vpc_id
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE EC2 INSTANCE
# ---------------------------------------------------------------------------------------------------------------------


module "webInstanceModule" {
  source             = "./modules/web-instance"
  aws_region         = "us-east-1"
  vpc_id             = module.networkModule.vpc_id
  subnet_public_id   = module.networkModule.public_subnets[0]
  security_group_ids = [module.securityGroupModule.sg_22, module.securityGroupModule.sg_80]
  key_pair_name      = "ROOTUSEKP"
}
