terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16.0"
    }
  }
}

provider "aws" {
  region = var.net_region
}

resource "aws_vpc" "my_network" {
  cidr_block = "10.0.0.0/16"
}

