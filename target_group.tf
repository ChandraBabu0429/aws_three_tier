resource "aws_lb_target_group" "target-elb" {
name = "ALB-TRG"
port = 80
protocol = "HTTP"
vpc_id = "${aws_vpc.nginx.id}"
}
resource "aws_lb_target_group_attachment" "attachment" {
target_group_arn = "${aws_lb_target_group.target-elb.arn}"
target_id = "${aws_instance.chandudemo-1.id}"
port = 80
}
resource "aws_lb_target_group_attachment" "attachment-1" {
target_group_arn = "${aws_lb_target_group.target-elb.arn}"
target_id = "${aws_instance.chandudemo-2.id}"
port = 80
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/master
