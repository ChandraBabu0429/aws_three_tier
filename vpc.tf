provider "aws" {
region = "us-east-2"
}
resource "aws_vpc" "nginx" {
cidr_block = "${var.vpc_cidr}"
instance_tenancy = "default"
tags = {
Name = "terraformVPC"
}
}