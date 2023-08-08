variable "subnetcidr" {
default = {
subnet1= "10.0.1.0/24"
subnet2= "10.0.2.0/24"
subnet3= "10.0.3.0/24"
subnet4= "10.0.4.0/24"
}
}
variable "vpc_cidr" {
default = "10.0.0.0/16"
}
variable "ec2info" {
default = {
ami= "ami-00eeedc4036573771"
instance_type= "t2.micro"
key_name = "ohiopem"
}
}