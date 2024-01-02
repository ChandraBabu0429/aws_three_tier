resource "aws_internet_gateway" "demogateway" {
vpc_id = "${aws_vpc.nginx.id}"
tags = {
name = "IGW"
}
}
resource "aws_route_table" "route" {
vpc_id = "${aws_vpc.nginx.id}"
route {
cidr_block = "0.0.0.0/0"
gateway_id = "${aws_internet_gateway.demogateway.id}"
}
tags = {
Name = "example"
}
}
resource "aws_route_table_association" "rt1" {
subnet_id = "${aws_subnet.subnet-3.id}"
route_table_id = "${aws_route_table.route.id}"
}
resource "aws_route_table_association" "rt2" {
subnet_id = "${aws_subnet.subnet-4.id}"
route_table_id = "${aws_route_table.route.id}"
}