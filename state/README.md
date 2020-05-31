# Terraform State

Terraform must store [state](https://www.terraform.io/docs/state/index.html) about your managed infrastructure and configuration. This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.

This state is stored by default in a local file named "terraform.tfstate", but it can also be stored remotely, which works better in a team environment. For a more in depth description regarding why Terraform requires state management read the Terraform documebntation for state management [here](https://www.terraform.io/docs/state/purpose.html).

When working with Terraform in a team, use of a local file makes Terraform usage complicated because each user must make sure they always have the latest state data before running Terraform and make sure that nobody else runs Terraform at the same time. Remote state is a feature of Terraform [backends](Remote state is a feature of backends) and is intended to mitigate this issue.

With remote state, Terraform writes the state data to a remote data store, which can then be shared between all members of a team. But remote state gives you more than just easier version control and safer storage. It also allows you to delegate the outputs to other teams. This allows your infrastructure to be more easily broken down into components that multiple teams can access.
