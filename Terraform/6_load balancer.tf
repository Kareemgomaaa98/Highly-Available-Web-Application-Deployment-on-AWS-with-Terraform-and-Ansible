resource "aws_elb" "elb-1" {
  name               = "web-elb"
  subnets            = [module.network.public1_id, module.network.public2_id]
  security_groups    = [module.network.security_group_id]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:80/"
  }

  # Define the instances to attach to the load balancer
    instances = [aws_instance.public1.id, aws_instance.public2.id]
}
