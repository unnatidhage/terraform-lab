terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

variable "filename" {
  type = string
}

variable "message" {
  type = string
}

resource "local_file" "env_file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}

output "file_created" {
  value = local_file.env_file.filename
}