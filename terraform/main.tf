
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


resource "aws_emr_cluster" "spark_cluster" {
  name          = "emr-cluster"
  release_label = "emr-5.29.0"
  applications  = ["Spark", "Hadoop"]
  service_role  = "EMR_DefaultRole"

  ec2_attributes {
    instance_profile = "EMR_EC2_DefaultRole"
    subnet_id        = "subnet-xxxxxxxx"
    // Additional configurations like security groups, key pairs, etc.
  }

  master_instance_group {
    instance_type  = "m4.large"
    instance_count = 1
  }

  core_instance_group {
    instance_type  = "m4.large"
    instance_count = 2
  }

  // S3 log URI
  log_uri = "s3n://mybucket/logs/"

  // Configuration for reading from S3 and writing to Snowflake
  // This will depend on your specific requirements and setup
}

# IAM role for EMR
resource "aws_iam_role" "emr_default_role" {
  name = "EMR_DefaultRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "elasticmapreduce.amazonaws.com"
      },
    }]
  })
}

# Attach policies to EMR IAM role
resource "aws_iam_role_policy_attachment" "emr_default_policy" {
  role       = aws_iam_role.emr_default_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonElasticMapReduceRole"
}
