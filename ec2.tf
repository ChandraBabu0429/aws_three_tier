resource "aws_instance" "chandudemo-1" {
ami = lookup(var.ec2info, "ami")
instance_type = lookup(var.ec2info, "instance_type")
key_name = lookup(var.ec2info, "key_name")
vpc_security_group_ids = [aws_security_group.demosg.id]
subnet_id = "${aws_subnet.subnet-3.id}"
associate_public_ip_address = true
tags = {
Name = "chandu Instance 1"
}
}
resource "aws_instance" "chandudemo-2" {
ami = lookup(var.ec2info, "ami")
instance_type = lookup(var.ec2info, "instance_type")
key_name = lookup(var.ec2info, "key_name")
vpc_security_group_ids = [aws_security_group.demosg.id]
subnet_id = "${aws_subnet.subnet-4.id}"
associate_public_ip_address = true
tags = {
Name = "chandu Instance 2"
}
}
resource "null_resource" "ansible"{
depends_on = [
aws_instance.chandudemo-1,
aws_instance.chandudemo-2
]
provisioner "local-exec"{
command = "ansible-playbook -i '${aws_instance.chandudemo-1.public_ip},' -u ubuntu --private-key ~/aws_key.pem playbook.yml"
}
provisioner "local-exec"{
command = "ansible-playbook -i '${aws_instance.chandudemo-2.public_ip},' -u ubuntu --private-key ~/aws_key.pem playbook1.yml"
}
}