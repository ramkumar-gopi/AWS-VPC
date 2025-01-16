# AWS VPC Configuration

This project sets up a simple Virtual Private Cloud (VPC) infrastructure using Terraform. The VPC consists of the following components:

- **6 Subnets:**
  - 3 Public Subnets
  - 3 Private Subnets
- **Internet Gateway:**  
  - Attached to the public subnets for Internet connectivity.
- **NAT Gateway:**  
  - Deployed in one of the public subnets, along with an Elastic IP.  
  - Provides Internet access for private subnets.
- **Route Tables:**  
  - Public route table associated with the Internet Gateway for public subnets.  
  - Private route table associated with the NAT Gateway for private subnets.

---

## Prerequisites

Before using this project, ensure you have the following installed:

1. **Terraform:**  
   [Download and install Terraform](https://developer.hashicorp.com/terraform/downloads).
2. **AWS CLI (optional):**  
   Useful for verifying the resources after deployment.  
   [Download and install AWS CLI](https://aws.amazon.com/cli/).

---

## Commands

Below are the Terraform commands to manage the VPC infrastructure:

### 1. **Initialize Terraform**

Run this command to download the required providers and modules:
`terraform init`

Check the changes that will be applied to your AWS infrastructure:
`terraform plan`

Deploy the resources to AWS with the following command:
`terraform apply`
