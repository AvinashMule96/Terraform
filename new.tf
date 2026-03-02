# provider "aws" {
    # region = "ap-south-1"
   
  
# }
# resource "aws_instance" "example" {
#   for_each = toset(["first", "second","third","fourth"])
#   ami           = "ami-051a31ab2f4d498f5"
#   instance_type = "t3.micro"
#   tags = {
#     Name = each.key
#       }
# }
# resource "aws_instance" "example" {
  
  # ami           = "ami-051a31ab2f4d498f5"
  # instance_type = "t3.micro"
  # count = 4
  # tags = {
    # Name = "webserver${index.count}"
      # }
# }







provider "aws" {
  region = "ap-south-1"

  }

  resource "aws_instance" "terra" {
    ami = "ami-051a31ab2f4d498f5"
    instance_type = "t3.micro"
    key_name = "mykey"
    vpc_security_group_ids = "sg-04066b02d89d6dc20"
    tags = {
      Name = "new"
    }
    
  }

  resource "aws_security_group" "mysg" {
    ingress {
      description = "allow ssh"
      to_port = 22
      from_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
      description = "allow all"
      to_port = 0
      from_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
    
  }