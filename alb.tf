resource "aws_lb" "external-alb" {
name = "External-LB"
internal = false
load_balancer_type = "application"
security_groups = ["${aws_security_group.demosg.id}"]
subnets =["${aws_subnet.subnet-3.id}","${aws_subnet.subnet-4.id}"]
}
resource "aws_lb_listener" "external-elb" {
load_balancer_arn = "${aws_lb.external-alb.arn}"
port = "80"
protocol = "HTTP"
default_action {
type = "forward"
target_group_arn = "${aws_lb_target_group.target-elb.arn}"
}
}