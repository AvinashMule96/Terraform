# provider "aws" {
#     region = "ap-south-1"
   
  
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
  
#   ami           = "ami-051a31ab2f4d498f5"
#   instance_type = "t3.micro"
#   count = 4
#   tags = {
#     Name = "webserver${index.count}"
#       }
# }







# provider "aws" {
#   region = "ap-south-1"

#   }

#   resource "aws_instance" "terra" {
#     ami = "ami-051a31ab2f4d498f5"
#     instance_type = "t3.micro"
#     key_name = "mykey"
#     vpc_security_group_ids = "sg-04066b02d89d6dc20"
#     tags = {
#       Name = "new"
#     }
    
#   }

#   resource "aws_instance" "terra" {
#     ami = "ami-051a31ab2f4d498f5"
#     instance_type = "t3.micro"
#     key_name = "mykey"
#     vpc_security_group_ids = [aws_security_group.mysg.id]
#     tags = {
#       Name = "new"
#     }
    
#   }

  
  










provider "aws" {
  # region = "ap-south-1" #change region 
region = var.region_name
  
}

  resource "aws_instance" "demo" {
  # ami  = "ami-0f559c3642608c138"
   ami = var.ami

  # instance_type = "t3.micro"
  instance_type = var.instance_type[0]
  # key_name = "mykey"
  key_name = var.key
  vpc_security_group_ids = var.sg
 tags = {
  Name = "webserver"
 }
    
  }