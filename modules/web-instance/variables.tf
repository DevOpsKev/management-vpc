  
# Variables

variable "aws_region" {
     default = "us-east-1"
}
variable "vpc_id" {
  description = "VPC id"
  default = ""
}
variable "subnet_public_id" {
  description = "VPC public subnet id"
  default = ""
}
variable "security_group_ids" {
  description = "EC2 ssh security group"
  default = ""
}
variable "key_pair_name" {
  description = "EC2 Key pair name"
  default = ""
}
variable "environment_tag" {
  description = "Environment tag"
  default = ""
}
variable "instance_ami" {
  description = "EC2 instance ami"
  default = "ami-0323c3dd2da7fb37d"
}
variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}
variable "git_branch" {
    default = "unknown"
}
variable "git_hash" {
    default = "unknown"
}
variable "deploy_status" {
    default = "unknown"
}