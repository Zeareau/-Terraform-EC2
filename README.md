# Cloud-Based Web Server Deployment with Terraform

This project uses **Terraform** to automate the provisioning of a cloud-based NGINX web server on **AWS EC2**. Through Infrastructure as Code (IaC), it builds a complete virtual network environment and deploys a web server with minimal manual configuration.

## What It Does

- Provisions a **VPC**, **public subnet**, and **internet gateway**
- Deploys an **EC2 instance** using a defined **Amazon Machine Image (AMI)**
- Bootstraps **NGINX** installation with a custom `user-data.sh` script
- Opens necessary ports (**22 for SSH**, **80 for HTTP**) via a **Security Group**

## How to Run

1. Install and configure [Terraform](https://developer.hashicorp.com/terraform) and [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
2. Clone the repo and navigate to the project directory
3. Run:
    ```bash
    terraform init
    terraform plan -out=tfplan
    terraform apply "tfplan"
    ```
4. Copy the **EC2 instance public IP** and visit it in your browser to confirm NGINX is live

## 📁 Project Structure

| File           | Description                                                |
|----------------|------------------------------------------------------------|
| `main.tf`      | Defines AWS infrastructure (VPC, subnet, EC2 instance, security groups) |
| `user-data.sh` | Bash script for auto-installing NGINX during EC2 launch    |
| `tfplan`       | Terraform plan output (optional for debugging)             |

## What I Learned

- Writing **Infrastructure as Code (IaC)** using Terraform
- Understanding AWS services like **EC2**, **VPC**, **subnets**, and **security groups**
- Using **bootstrap scripts** to automate server configuration
- Practicing real-world **DevOps workflows** from provisioning to deployment

---

✅ *This project was built entirely from scratch as a personal project to strengthen my skills in cloud infrastructure and automation.*

