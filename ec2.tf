# application EC2 Instance.

resource "aws_instance" "application" {
  ami             = "${var.application_ami_id}"
  instance_type   = "${var.application_instance_type}"
  key_name        = "${var.application_ssh_key_name}"
  subnet_id       = "${var.application_subnet_id}"

  vpc_security_group_ids = ["${aws_security_group.application.id}"]

  tags = {
    Name = "${var.application_tag_environment}-application"
  }
}
