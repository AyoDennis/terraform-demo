resource "aws_s3_bucket" "example" {
  bucket = "emmanuel-disturbing-test-bucket"


  tags = merge(local.common_tags,
    {
      Name = "${var.project_name}-s3"
  })
}



locals {
  common_tags = {
    Environment = "Dev"
    Team        = "DEC Data Engineering"
  }
}