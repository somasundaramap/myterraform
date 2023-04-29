terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["C:/Users/newuser/.aws/credentials"]
}

resource "aws_instance" "test" {
  ami = "ami-0dfcb1ef8550277af"
  instance_type     = var.instancetype
  key_name   = "soms-key"
}
