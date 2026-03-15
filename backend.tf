terraform {
  backend "s3" {
    bucket = "my-backend"
    key = "terraform.tfstate"
    region = "ap-south-1"
    
  }
}



provider "aws" {
region = var.region_name
  
}

  resource "aws_instance" "demo" {
  ami = var.ami
 instance_type = var.instance_type[0]
  key_name = var.key
  vpc_security_group_ids = [data.aws_security_group.sg.id]
 tags = {
  Name = "webserver"
 }
    
  }

  data "aws_security_group" "sg" {
    name = "launch-wizard-20"
    vpc_id = "vpc-0a7b0b2c68b858892"
  }
