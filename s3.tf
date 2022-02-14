provider "aws" {
  profile = "default"
  region = "us-east-2"
  access_key = ""
  secret_key = ""
}

# Define your S3 AWS Resource
resource  "aws_s3_bucket" "tf_course" {
  bucket = "testterrafrom"
  #acl    = "private"
}
