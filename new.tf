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
resource "aws_instance" "example" {
  
  ami           = "ami-051a31ab2f4d498f5"
  instance_type = "t3.micro"
  count = 4
  tags = {
    Name = "webserver${index.count}"
      }
}