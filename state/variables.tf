  
# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region in which all resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the s3 bucket in which terraform state will be stored"
  type        = string
  default     = "terraform-spikes-shared-state"
}

variable "table_name" {
  description = "The name of the dynamoDB table in which terraform state locks will be stored"
  type        = string
  default     = "terraform-spikes-shared-state-locks"
}