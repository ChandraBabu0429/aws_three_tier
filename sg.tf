resource "aws_security_group" "demosg" {
vpc_id = "${aws_vpc.nginx.id}"
# HTTP access from anywhere
ingress {
from_port = "80"
to_port = "80"
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
# SSH access from anywhere
ingress {
from_port = "22"
to_port = "22"
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
description = "Allow traffic from application layer"
from_port = 3306
to_port = 3306
protocol = "tcp"
}
egress {
from_port = "0"
to_port = "0"
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
tags = {
Name = "Web SG"
}
}