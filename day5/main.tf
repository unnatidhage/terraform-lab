terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_container" {

  for_each = {
    for container in var.container_config :
    container.name => container
  }

  name  = each.value.name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = each.value.port
  }
}

output "container_urls" {

  value = [
    for container in var.container_config :
    "http://localhost:${container.port}"
  ]
}