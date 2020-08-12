resource "aws_s3_bucket" "test-bucket" {
    bucket = "12082020-eu-devops-munich"
    acl = "private"
}