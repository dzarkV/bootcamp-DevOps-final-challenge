terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.21.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "bootcampdevops_nodejs" {
  name         = "bootcampdevops_nodejs:latest"
  keep_locally = true
}

resource "docker_container" "bootcampdevops_nodejs" {
  name    = "bootcampdevops_nodejs"
  image   = docker_image.bootcampdevops_nodejs.image_id

  ports {
    external = 3000
    internal = 3000
  }
}

resource "docker_image" "bootcampdevops_golang" {
  name         = "bootcampdevops_golang:latest"
  keep_locally = true
}

resource "docker_container" "bootcampdevops_golang" {
  name    = "bootcampdevops_nodejs"
  image   = docker_image.bootcampdevops_golang.image_id

  ports {
    external = 3002
    internal = 3002
  }
}

resource "docker_image" "nginx-proxy" {
  name         = "nginx-proxy:latest"
  keep_locally = true
}

resource "docker_container" "nginx-proxy" {
  name    = "nginx-proxy"
  image   = docker_image.nginx-proxy.image_id

  ports {
    external = 80
    internal = 80
  }
}