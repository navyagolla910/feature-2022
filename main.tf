# main.tf

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  access_key = "AKIA24GI65GMVTKTPJUA"
  secret_key = "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"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-06eecef118bbf9259"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

# variables.tf

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

