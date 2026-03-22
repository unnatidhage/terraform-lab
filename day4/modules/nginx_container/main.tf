terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

variable "container_name" {
  type = string
}

variable "container_port" {
  type = number
}

variable "image_name" {
  type = string
}

resource "docker_image" "nginx" {
  name = var.image_name
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.container_port
  }
}