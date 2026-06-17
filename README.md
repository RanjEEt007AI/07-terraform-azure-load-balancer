# Terraform Azure Load Balancer

## Project Overview

This project demonstrates how to create an Azure Load Balancer using Terraform simple code.

Azure Load Balancer distributes incoming network traffic across multiple backend resources to improve availability, scalability, and performance.

---

## Architecture

Resource flow:

Resource Group → Virtual Network → Subnet → Public IP → Load Balancer

---

## Resources Created

* Azure Resource Group
* Azure Virtual Network (VNet)
* Azure Subnet
* Azure Public IP
* Azure Load Balancer

---

## Prerequisites

Before running this project, ensure the following tools are installed:

* Azure Subscription
* Terraform
* Azure CLI
* Visual Studio Code (optional)

Login to Azure:

```bash
az login
```

---

## Project Structure

```text
07-terraform-azure-load-balancer/
│
├── provider.tf
├── main.tf
├── .gitignore
├── README.md

```

---

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate Terraform configuration:

```bash
terraform validate
```

Generate execution plan:

```bash
terraform plan
```

Deploy resources:

```bash
terraform apply
```

---

## Outputs

This project provides:

* Resource Group Name
* Virtual Network Name
* Subnet Name
* Public IP Name
* Load Balancer Name

---

## Learning Objectives

Through this project I learned:

* Infrastructure as Code (IaC)
* Azure networking concepts
* Public IP configuration
* Azure Load Balancer deployment
* Terraform resource dependencies
* Terraform workflow

---

## Future Enhancements

* Add Backend Address Pool
* Configure Health Probe
* Add Load Balancing Rules
* Attach Virtual Machines
* Implement Terraform Modules
* Add CI/CD using GitHub Actions

---

## Author

Ranjeet Kumar
DevOps | Azure | Terraform | Kubernetes
