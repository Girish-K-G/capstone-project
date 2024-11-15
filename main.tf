provider "aws" {
  region = "us-east-1"  # Set your preferred AWS region
}

# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
  ami = "ami-012967cc5a8c9f891"  # Replace with the actual AMI ID you want to use
  instance_type = "t2.micro"             # Free-tier eligible instance type
  tags = {
    Name = "MYEC2SSH"              # Tag to identify the EC2 instance
  }
}

# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = "gvkgk"     # Use a globally unique name for your S3 bucket
  acl    = "private"                   # Set bucket ACL to private for security
}
