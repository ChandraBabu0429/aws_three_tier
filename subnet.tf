resource "aws_subnet" "subnet-1" {
vpc_id = "${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet1")
map_public_ip_on_launch = true
availability_zone = "us-east-2b"
tags = {
Name = "nginex 1"
}
}
resource "aws_subnet" "subnet-2" {
vpc_id ="${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet2")
map_public_ip_on_launch = true
availability_zone = "us-east-2c"
tags = {
Name = "nginex 2"
}
}
resource "aws_subnet" "subnet-3" {
vpc_id = "${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet3")
map_public_ip_on_launch = true
availability_zone = "us-east-2b"
tags = {
Name = "private nginex 3"
}
}
resource "aws_subnet" "subnet-4" {
vpc_id = "${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet4")
map_public_ip_on_launch = true
availability_zone = "us-east-2c"
tags = {
Name = "private nginex 4"
}
}
resource "aws_subnet" "subnet-1" {
vpc_id = "${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet1")
map_public_ip_on_launch = true
availability_zone = "us-east-2b"
tags = {
Name = "nginex 1"
}
}
resource "aws_subnet" "subnet-2" {
vpc_id ="${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet2")
map_public_ip_on_launch = true
availability_zone = "us-east-2c"
tags = {
Name = "nginex 2"
}
}
resource "aws_subnet" "subnet-3" {
vpc_id = "${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet3")
map_public_ip_on_launch = true
availability_zone = "us-east-2b"
tags = {
Name = "private nginex 3"
}
}
resource "aws_subnet" "subnet-4" {
vpc_id = "${aws_vpc.nginx.id}"
cidr_block = lookup(var.subnetcidr, "subnet4")
map_public_ip_on_launch = true
availability_zone = "us-east-2c"
tags = {
Name = "private nginex 4"
}
}