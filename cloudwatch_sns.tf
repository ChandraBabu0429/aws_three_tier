resource "aws_sns_topic" "chandutopic" {
name = "sns-chandu-name"
}
resource "aws_sns_topic_subscription" "email-target" {
topic_arn = aws_sns_topic.chandutopic.arn
protocol = "email"
<<<<<<< HEAD
endpoint = "chandrababu.seenathur@itversity.com"
=======
endpoint = "chandrababu.seenathur@fissionlabs.com"
>>>>>>> origin/master
}
resource "aws_cloudwatch_metric_alarm" "ec2_cpu_alarm" {
alarm_name = "ec2-cpu-alarm"
comparison_operator = "GreaterThanOrEqualToThreshold"
evaluation_periods = "2"
metric_name = "CPUUtilization"
namespace = "AWS/EC2"
period = "300"
statistic = "Average"
threshold = "80"
<<<<<<< HEAD
alarm_description = "This metric monitors CPU utilization of the EC2instance"
=======
alarm_description = "This metric monitors CPU utilization of the EC2 instance"
>>>>>>> origin/master
alarm_actions = [aws_sns_topic.chandutopic.arn]
dimensions = {
InstanceId ="${aws_instance.chandudemo-1.id},${aws_instance.chandudemo-2.id}"
}
}
