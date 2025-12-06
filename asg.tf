resource "aws_autoscaling_group" "my_asg" {
  launch_template {
    id      = aws_launch_template.template.id
    version = "$Latest"
  }

  min_size                  = 1
  max_size                  = 3
  desired_capacity          = 3
  vpc_zone_identifier       = [subnet-0da0f98779f6e8fda]

  tag {
    key                 = "Name"
    value               = "asg-instance"
    propagate_at_launch = true
  }
  
}
