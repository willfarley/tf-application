# application EC2 Security Group

resource "aws_security_group" "application" {
  name        = "application-ec2-${var.application_tag_environment}"
  description = "Security Group for the application EC2 Instance"
  vpc_id      = "${var.application_vpc_id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    security_groups   = ["${var.bastion_sg}"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
