# Terraform AWS VPC Setup

## 📌 Overview

This project provisions a basic AWS networking infrastructure using Terraform.
It automates the creation of a VPC environment and supporting components required to deploy publicly accessible resources such as EC2 instances or load balancers.

The configuration is modular and uses variables and data sources to make the infrastructure reusable and easy to customize.

## 🚀 Resources Created

This Terraform configuration creates the following AWS resources:

* A **Virtual Private Cloud (VPC)**
* An **Internet Gateway** to enable internet access
* **Two Public Subnets** in different Availability Zones for high availability
* A **Public Route Table**
* **Route Table Associations** for both public subnets
* Optional **EC2 instance bootstrap configuration** using `user_data`

## ⚙️ Terraform Features Used

This project also demonstrates important Terraform concepts:

* **Variables (`variable.tf`)** to make the infrastructure configurable
* **Data Blocks** to dynamically fetch AWS resources such as Availability Zones
* **User Data Scripts** to automatically configure EC2 instances during launch
* Infrastructure defined using **Terraform HCL**

## 📂 Project Structure

```
Terraform/
│
├── main.tf          # Main infrastructure configuration
├── variables.tf     # Input variables for customization
├── outputs.tf       # Outputs after deployment
├── userdata.sh      # EC2 initialization script
└── README.md        # Project documentation
```

## 🛠 Tools & Technologies

* Terraform
* AWS (VPC, Subnets, Route Tables, Internet Gateway)
* Infrastructure as Code (IaC)

## 📖 Author

Avinash Mule
