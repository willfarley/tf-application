resource "aws_s3_bucket" "bucket" {
  bucket = "${var.application_tag_environment}-application"
  acl    = "private"

  tags = {
    Name        = "${var.application_tag_environment}-application"
    Environment = "${var.application_tag_environment}"
  }
}
