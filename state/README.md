# Terraform State

Terraform must store state about your managed infrastructure and configuration. This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.

This state is stored by default in a local file named "terraform.tfstate", but it can also be stored remotely, which works better in a team environment. For a more in depth description regarding why Terraform requires state management read the Terraform documebntation for state management [here](https://www.terraform.io/docs/state/purpose.html).

[Terraform state documentation](https://www.terraform.io/docs/state/index.html)

[Terraform S3 backend](https://www.terraform.io/docs/backends/types/s3.html)
