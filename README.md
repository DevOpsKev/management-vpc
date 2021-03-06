[![Built for Reasearch Data Management](https://img.shields.io/badge/elsevier%20project-rdm-orange?style=flat-square)](https://www.elsevier.com/solutions/mendeley-data-platform)
[![Maintained by DevOn.nl](https://img.shields.io/badge/maintained%20by-devon.nl-blue?style=flat-square)](https://devon.nl) 
[![Terraform Version](https://img.shields.io/badge/terraform-=>%200.12.0-green?style=flat-square)](https://github.com/hashicorp/terraform) 
[![Latest](https://img.shields.io/badge/latest-0.0.2-green?style=flat-square)](../../releases) 


# Management VPC AWS Module
This repository contains the exemplar module for deploying a Management VPC on [AWS](https://aws.amazon.com/) using [Terraform](https://www.terraform.io/).


![management vpc architecture](https://github.com/DevOpsKev/management-vpc/blob/master/_docs/management-vpc-demo.png?raw=true)

## Quick start
If you want to get started and deploy the Management VPC, configure remote state management with ```terraform login``` then execute ```init.sh``` and ```apply.sh```.

## How to use this repo

Follow these steps to implement the AWS Management VPC:

#### Step #0 Github
If you are viewing this readme by any other means go to the canonical repository on [Github](https://github.com/DevOpsKev/management-vpc) for the most up to date version of this module.

#### Step #1 Configure terraform.io
- todo
#### Step #2 Configure circleci.io
- todo
#### Step #3 Deploy through CICD
- todo
#### Step #4 Configure cloudcraft.co
- todo


## Dependencies

To deploy this repo and make use of the supporting code samples you will need the following dependencies installed on your developer workstation and CICD host:
- [Terraform](https://www.terraform.io/): Use Infrastructure as Code to provision and manage any cloud, infrastructure, or service

## Tooling

The following tools are not strictly required to work with this repo but we recommend their use and used them oursleves in the creation of this repo:
- [Github](https://github.com): GitHub is a development platform inspired by the way you work. From open source to business, you can host and review code, manage projects, and build software alongside 50 million developers.
- [AWS Cloud9 IDE](https://aws.amazon.com/cloud9/): A cloud-native IDE for writing, running, and debugging code. 
- [CircleCI](https://circleci.com/): CI that’s built for the cloud. Automate your development process quickly, safely,
and at scale.
- [Terraform Cloud](https://www.terraform.io/): A platform for engineers to collaborate on Terraform configurations through remotely stored, versioned, and shared Terraform state files.
and at scale.
- [SonarCloud](https://sonarcloud.io/): Maximize your throughput and only release clean code. SonarCloud automatically analyzes branches and decorates pull requests.
- [CloudCraft](https://cloudcraft.co/): Create a professional architecture diagram in minutes with the Cloudcraft visual designer, optimized for AWS with smart components.

## What's included with this repo?

This repo has the following folder structure:

- [root](https://github.com/DevOpsKev/management-vpc/tree/master): The root folder contains an example of how to deploy the Management VPC.
- [state](https://github.com/DevOpsKev/management-vpc/tree/master/state): This folder contains bootstrap terraform scripts to deploy s3 and dynamodb instances for Terraform shared state management and transaction locking.
- [modules](https://github.com/DevOpsKev/management-vpc/tree/master/modules): This folder contains the supporting code for this Module, broken down into multiple standalone submodules.
- [test](https://github.com/DevOpsKev/management-vpc/tree/master/test): A suite of automated tests for the submodules and examples.
- [bash](https://github.com/DevOpsKev/management-vpc/tree/master/bash): Bash helper scripts to wrap terraform commands and tag deployed instances with Git branch and commit hash.


## What's a Module?

A Module is a canonical, reusable, best-practices definition for how to run a single piece of infrastructure, such
as a database or server cluster. Each Module is written using a combination of [Terraform](https://www.terraform.io/)
and scripts (mostly bash) and include automated tests, documentation, and examples. It is maintained both by the open
source community and companies that provide commercial support.

Instead of figuring out the details of how to run a piece of infrastructure from scratch, you can reuse
existing code that has been proven in production. And instead of maintaining all that infrastructure code yourself,
you can leverage the work of the Module community to pick up infrastructure improvements through
a version number bump.

## Who maintains this Module?

This Module is maintained by [DevOn](http://www.devon.nl). If you're looking for commercial
support, send an email to [iac@devon.nl](mailto:iac@devon.nl?Subject=AWS%20Management%20VPC).
DevOn can help with:

- Setup, customization, and support for this Module.
- Modules for other types of infrastructure, such as VPCs, Docker clusters, databases, and continuous integration.
- Modules that meet compliance requirements, such as HIPAA.
- Consulting & Training on AWS, Terraform, and DevOps.

## How do I contribute to this Module?

Contributions are welcome. Check out the
[Contribution Guidelines](https://github.com/DevOpsKev/management-vpc/tree/master/CONTRIBUTING.md) and 
[Code of Conduct](https://github.com/DevOpsKev/management-vpc/tree/master/CONDUCT.md) for instructions.

## How is this Module versioned?

This Module follows the principles of [Semantic Versioning](http://semver.org/). You can find each new release,
along with the changelog, in the [Releases Page](../../releases).

During initial development, the major version will be 0 (e.g., `0.x.y`), which indicates the code does not yet have a
stable API. Once we hit `1.0.0`, we will make every effort to maintain a backwards compatible API and use the MAJOR,
MINOR, and PATCH versions on each release to indicate any incompatibilities.

## License

This code is released under the Apache 2.0 License. Please see
[LICENSE](https://github.com/DevOpsKev/management-vpc/tree/master/LICENSE) and
[NOTICE](https://github.com/DevOpsKev/management-vpc/tree/master/NOTICE) for more details.

Copyright &copy; 2020 DevOn.nl

