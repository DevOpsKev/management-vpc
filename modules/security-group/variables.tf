
variable "aws_region" {
     default = "us-east-1"
}
variable "ingress_CIDR_block" {
    type = list
    default = [ "0.0.0.0/0" ]
}
variable "egress_CIDR_block" {
    type = list
    default = [ "0.0.0.0/0" ]
}
variable "environment_tag" {
  description = "Environment tag"
  default = ""
}
variable "vpc_id" {
  description = "VPC id"
  default = ""
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
