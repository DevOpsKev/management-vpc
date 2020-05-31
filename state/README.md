# Terraform State

Terraform must store [state](https://www.terraform.io/docs/state/index.html) about your managed infrastructure and configuration. This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.

This state is stored by default in a local file named "terraform.tfstate", but it can also be stored remotely, which works better in a team environment. For a more in depth description regarding why Terraform requires state management read the Terraform documebntation for state management [here](https://www.terraform.io/docs/state/purpose.html).

When working with Terraform in a team, use of a local file makes Terraform usage complicated because each user must make sure they always have the latest state data before running Terraform and make sure that nobody else runs Terraform at the same time. Remote state is a feature of Terraform [backends](https://www.terraform.io/docs/backends/index.html) and is intended to mitigate this issue.

With remote state, Terraform writes the state data to a remote data store, which can then be shared between all members of a team. But remote state gives you more than just easier version control and safer storage. It also allows you to delegate the outputs to other teams. This allows your infrastructure to be more easily broken down into components that multiple teams can access.

## Example [S3](https://aws.amazon.com/s3/) Bucket (state storage) and [DynamoDB](https://aws.amazon.com/dynamodb/) (locking)

To enable remote state storage with S3, we will first create an S3 bucket and then create a DynamoDB table for locking. The DynamoDB table must havd a primary key called 'LockID' and please note this is CASE SENSITIVE.

### Step by Step

#### #1 Configure credentials for your AWS CLI.
Either by setting AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY or by means of aws-adfs. Beneath the covers Terraform provides and abstraction over the AWS SDK for Go so your undelying AWS CLI must be configured for your account.

#### #2 Deploy S3 Bucket and DynamoDB Table
Run ```terraform init``` to download the provider code and then run ```terraform apply``` to deploy. you will now have deployed both those instances but with state stored locally.
