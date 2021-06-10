terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}

data "http" "myip" {
  url = "https://ifconfig.me"
}

resource "random_string" "password" {
  length  = 10
  special = false
}