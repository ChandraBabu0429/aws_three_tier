resource "aws_security_group" "master_sg" {
name = "primary-security-group"
vpc_id = "${aws_vpc.nginx.id}"
ingress {
from_port = 3306
to_port = 3306
protocol = "tcp"
security_groups = ["${aws_security_group.demosg.id}"]
}
}
resource "aws_security_group" "replica" {
name = "replica-security-group"
vpc_id = "${aws_vpc.nginx.id}"
ingress {
from_port = 3306
to_port = 3306
protocol = "tcp"
security_groups = [aws_security_group.master_sg.id]
}
}
