provider "aws" {
  profile = "default"
  region = "us-east-2"
  access_key = "AKIA5MDMMSR7PXPKULFF"
  secret_key = "gQYIHtidKnjO6wlc2esWut9abetoKyfT7VWqs4Bx"
}

# Define your S3 AWS Resource
resource  "aws_s3_bucket" "tf_course" {
  bucket = "testterrafrom"
  #acl    = "private"
}
