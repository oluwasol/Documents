terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

 # Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
 resource "aws_instance" "web" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["default"]

  tags = {
    Name = "HelloWorld"
  }
 
}
