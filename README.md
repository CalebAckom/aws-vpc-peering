# Implementing AWS VPC Peering with Terraform: A Practical Guide

[![Terraform](https://img.shields.io/badge/Terraform-%237B42F4.svg?style=for-the-badge&logo=terraform)](https://www.terraform.io/) [![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)

This repository contains the Terraform configuration files and a comprehensive guide for implementing AWS VPC Peering to establish private network connectivity between two Virtual Private Clouds (VPCs) within AWS.

This project accompanies the article [Implementing AWS VPC Peering with Terraform: A Practical Guide]([https://medium.com/@calebackom/implementing-aws-vpc-peering-with-terraform-a-practical-guide-626755925b1b]), which walks through the concepts, implementation steps, and testing of VPC Peering using Terraform.

## Overview

The guide and this repository demonstrate how to:

* Define two separate AWS VPCs using Terraform.
* Establish a VPC Peering connection between these VPCs.
* Configure route tables in both VPCs to enable traffic flow across the peering connection.
* Set up basic security groups to allow inter-VPC communication.
* Apply and test the Terraform configuration to verify the peering setup.

## Repository Contents

Review the Terraform-Docs here [Terraform-Docs](Infrastructure_README.md)

* `provider.tf`: Defines the AWS provider and backend configuration (S3 for state).
* `variables.tf`: Declares the input variables for the infrastructure.
* `terraform.tfvars`: Contains example values for the declared variables. **Note:** You will likely need to customize these values for your AWS environment.
* `vpc.tf`: Defines the AWS VPC resources.
* `subnet.tf`: Defines the subnet resources within each VPC.
* `sg.tf`: Defines the security group resources.
* `route-table.tf`: Defines the route table resources and associations, including peering routes.
* `igw.tf`: Defines the Internet Gateway resource (for public subnet in one VPC).
* `ec2.tf`: Defines example EC2 instances within the VPCs for testing.
* `vpc-peering.tf`: Defines the `aws_vpc_peering_connection` resource.
* `README.md`: This file.

## Prerequisites

* An active AWS account.
* Terraform installed on your local machine.
* AWS CLI configured with appropriate credentials.
* Familiarity with basic AWS networking concepts (VPCs, Subnets, Route Tables, Security Groups).

## Getting Started

1.  Clone this repository to your local machine:
    ```bash
    git clone https://github.com/CalebAckom/aws-vpc-peering
    cd aws-vpc-peering
    ```

2.  Review and customize the `terraform.tfvars` file to match your desired AWS region, VPC CIDR blocks, subnet CIDR blocks, and other variables.

3.  Initialize Terraform:
    ```bash
    terraform init
    ```

4.  Review the planned infrastructure changes:
    ```bash
    terraform plan
    ```

5.  Apply the Terraform configuration:
    ```bash
    terraform apply -auto-approve
    ```
    *(Remove `-auto-approve` for manual review before applying in a production environment.)*

6.  Follow the testing steps outlined in the accompanying article to verify the VPC Peering connection.

## Contributing

Contributions to this repository are welcome. Please feel free to submit pull requests with improvements or bug fixes.
