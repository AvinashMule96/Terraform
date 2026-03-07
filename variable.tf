variable "region_name" {
    default = "ap-south-1"
  
}

variable "ami" {
    default = "ami-0f559c3642608c138"
}

variable "instance_type" {
    description = "enter instance value"

    default = ["t3.micro","t3.small"]
    type = list


}
variable "key" {

default = "mykey"
  
}
variable "sg" {
    default = ["sg-08c811f48a4803dda"]
  
}