resource "aws_cloudwatch_metric_alarm" "up" {
  alarm_name          = "ALB Scale Up"
  alarm_description   = "Scales up an instance when CPU ultilization is greater than 80 %"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "80"

  dimensions = {
    "AutoScalingGroupName" = "${aws_autoscaling_group.this.name}"
  }

  actions_enabled = true
  alarm_actions   = ["${aws_autoscaling_policy.scaleup.arn}"]
}

resource "aws_cloudwatch_metric_alarm" "down" {
  alarm_name          = "ALB Scale Down"
  alarm_description   = "Scales down an instance when CPU ultilization is greater than 50 %"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "50"

  dimensions = {
    "AutoScalingGroupName" = "${aws_autoscaling_group.this.name}"
  }

  actions_enabled = true
  alarm_actions   = ["${aws_autoscaling_policy.scaledown.arn}"]
}
