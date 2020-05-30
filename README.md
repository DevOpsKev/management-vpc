[![Built for Reasearch Data Management](https://img.shields.io/badge/elsevier%20project-rdm-orange?style=flat-square)](https://www.elsevier.com/solutions/mendeley-data-platform)
[![Maintained by DevOn.nl](https://img.shields.io/badge/maintained%20by-devon.nl-blue?style=flat-square)](https://devon.nl) 


# Management VPC AWS Module
This repository contains the exemplar module for deploying a Management VPC on [AWS](https://aws.amazon.com/) using [Terraform](https://www.terraform.io/).

## Quick start
If you want to get started and deploy the Management VPC, you can run the main.tf that is in the root of this repo.

## What's included with this repo

This repo has the following folder structure:

- [root](https://github.com/DevOpsKev/management-vpc/tree/master): The root folder contains an example
  of how to deploy the Management VPC.
- [modules]((https://github.com/DevOpsKev/management-vpc/tree/master/modules)): This folder contains the supporting code for this Module, broken down into multiple standalone submodules.
- [examples]((https://github.com/DevOpsKev/management-vpc/tree/master/examples)): This folder contains example code demonstrating how to use the submodules.
- [test]((https://github.com/DevOpsKev/management-vpc/tree/master/test)): A suite of automated tests for the submodules and examples.