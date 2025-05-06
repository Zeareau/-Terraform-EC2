Cloud-Based Web Server Deployment with Terraform

This project uses **Terraform** to automate the deployment of a fully functional NGINX web server on AWS. It provisions key infrastructure components such as a custom VPC, subnet, and EC2 instance—all through Infrastructure as Code.

---

## What It Does

- Creates a **VPC**, **public subnet**, and **internet gateway**
- Launches an **EC2 instance** using a custom AMI
- Uses a **user-data script** to install and enable NGINX on boot
- Opens **port 22 (SSH)** and **port 80 (HTTP)** via a Security Group

---

## How to Run

1. Make sure Terraform and AWS CLI are configured
2. Run `terraform init`
3. Run `terraform plan -out=tfplan`
4. Run `terraform apply "tfplan"`
5. Visit the EC2 **public IP address** in your browser to see your web server

---

## Files

- `main.tf`: Defines AWS infrastructure (VPC, subnet, EC2, security groups)
- `user-data.sh`: Bootstrap script that installs and runs NGINX on the EC2 instance

---

## What I Learned

- Hands-on experience with Terraform’s declarative syntax
- How to securely connect to AWS using **IAM users** and **access keys**
- Debugging and resolving real-world AWS IAM and EC2 provisioning errors
