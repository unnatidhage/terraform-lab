# Terraform Infrastructure as Code Lab

## Overview

This repository contains a series of lab assignments demonstrating **Infrastructure as Code (IaC)** concepts using **Terraform** and **Docker**.
The goal of this lab was to understand how infrastructure can be created, configured, and managed using declarative configuration files instead of manual setup.

Each assignment progressively builds upon the previous one, introducing new Terraform concepts such as variables, modules, container orchestration, CI validation, and dynamic infrastructure creation.

---

## Technologies Used

* Terraform CLI
* Docker
* Git
* GitHub Actions (CI Automation)

---

## Repository Structure

```
terraform-lab
│
├── day1
│   └── Basic Terraform configuration using the local provider
│
├── day2
│   └── Terraform variables and environment configuration using tfvars
│
├── day3
│   └── Docker container provisioning using Terraform
│
├── day4
│   └── Terraform modules for reusable infrastructure components
│
├── day5
│   └── Dynamic container creation using Terraform expressions
│
├── .github
│   └── workflows
│       └── terraform-check.yml (CI validation workflow)
│
├── .gitignore
└── README.md
```

---

# Assignment Details

## Day 1 – Introduction to Terraform

Objective: Understand the Terraform workflow and create a simple infrastructure resource.

Implemented:

* Installation and setup of Terraform
* Local provider configuration
* Creation of a file resource (`hello.txt`)
* Usage of Terraform commands:

```
terraform init
terraform plan
terraform apply
```

Key Concepts:

* Terraform configuration structure
* Resource definition
* Outputs

---

## Day 2 – Variables and Multiple Configurations

Objective: Parameterize Terraform configurations using variables and variable files.

Implemented:

* Input variables
* Variable files (`.tfvars`)
* Environment-specific configurations

Files created:

* `dev.tfvars`
* `prod.tfvars`

Example:

```
filename = "dev.txt"
message = "Development environment"
```

Key Concepts:

* Environment configuration
* Reusable Terraform code

---

## Day 3 – Managing Containers with Terraform

Objective: Provision Docker containers using Terraform.

Implemented:

* Docker provider configuration
* Pulling the `nginx` image
* Creating a container
* Port mapping (80 → 8080)

Verification:

```
http://localhost:8080
```

Key Concepts:

* Terraform providers
* Infrastructure provisioning
* Container orchestration

---

## Day 4 – Terraform Modules

Objective: Create reusable infrastructure components using Terraform modules.

Implemented:

* Modular container configuration
* Reusable module `nginx_container`
* Deployment of multiple containers

Containers created:

* nginx1 → port 8081
* nginx2 → port 8082

Key Concepts:

* Terraform modules
* Code reuse
* Modular infrastructure design

---

## Day 5 – Automation and Validation

Objective: Automate Terraform validation using CI.

Implemented:

* CI workflow using GitHub Actions
* Automatic execution on repository push

Validation steps executed:

```
terraform fmt
terraform validate
terraform plan
```

Key Concepts:

* Infrastructure validation
* Continuous Integration
* DevOps automation

---

# Advanced Bonus – Dynamic Infrastructure Creation

Objective: Automatically generate multiple containers using Terraform expressions.

Implemented using:

```
for_each
```

Input configuration:

```
container_config = [
  { name = "web1", port = 8081 },
  { name = "web2", port = 8082 },
  { name = "web3", port = 8083 }
]
```

Terraform dynamically provisions containers based on this configuration.

Accessible services:

```
http://localhost:8081
http://localhost:8082
http://localhost:8083
```

Output variable:

```
container_urls = [
"http://localhost:8081",
"http://localhost:8082",
"http://localhost:8083"
]
```

Key Concepts:

* Terraform expressions
* Dynamic resource creation
* Scalable infrastructure

---

# How to Run the Project

### 1. Initialize Terraform

```
terraform init
```

### 2. Preview Infrastructure

```
terraform plan
```

### 3. Deploy Infrastructure

```
terraform apply
```

### 4. Destroy Infrastructure

```
terraform destroy
```

---

# Learning Outcomes

Through this lab, the following DevOps concepts were explored:

* Infrastructure as Code (IaC)
* Terraform workflow
* Variable-driven infrastructure
* Docker container provisioning
* Terraform modules
* Continuous Integration for infrastructure validation
* Dynamic infrastructure creation using loops

---

# Author

Unnati Dhage
Computer Science Student

