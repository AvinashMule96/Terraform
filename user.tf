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
user_data = <<-EOF
#!/bin/bash
yum install httpd -y
systemctl enable httpd
systemctl start httpd
echo " <h1> this i sterra file </h1>" > /var/www/html/index.html
EOF


 tags = {
  Name = "userdata"
 }
  }