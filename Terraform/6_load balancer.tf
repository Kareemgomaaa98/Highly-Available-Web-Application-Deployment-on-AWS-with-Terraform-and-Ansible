resource "aws_elb" "elb-1" {
  name               = "web-elb"
  subnets            = [module.network.public1_id, module.network.public2_id]
  security_groups    = [module.network.security_group_id]
  listener {
    instance_port     = 5000
    instance_protocol = "HTTP"
    lb_port           = 5000
    lb_protocol       = "HTTP"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:5000/"
  }

  # Define the instances to attach to the load balancer
    instances = [aws_instance.public1.id, aws_instance.public2.id]
}
