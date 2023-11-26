
# Provider configuration
provider "aws" {
  region = "us-west-2"
}

# EC2 instance resource
resource "aws_instance" "example_instance" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
}

# S3 bucket resource
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"
}
