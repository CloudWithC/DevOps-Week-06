terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

variable "filename" {
  default = "hello.txt"
}

resource "local_file" "example" {
  filename = var.filename
  content  = "Hello from Terraform!"
}

output "created_file" {
  value = local_file.example.filename
}
