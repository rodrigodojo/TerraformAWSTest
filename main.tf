 # Configure the AWS Provider
 provider "aws"{
     access_key = "AKIAYXIFZ3QKE6NXHCDO"
     secret_key = "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"
     region = "us-east-1"
 }

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-dojo123123123123"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  
}
 