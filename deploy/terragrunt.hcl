remote_state {
  backend = "s3"
  config = {
    bucket = "management-vpc-terraform-shared-state"
    
    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "management-vpc-terraform-shared-state-locks"
  }
}