 # Configure the AWS Provider
 provider "aws"{
     access_key = "${var.access_key}"
     secret_key = "${var.secret_key}"
     region = "${var.region}"
 }

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-dojo123123123123"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "object"{
  bucket = "${aws_s3_bucket.b.id}"
  key = "hello_word.txt"
  source = "arquivo.txt"
  etag =  "${md5(file("arquivo.txt"))}"
}

output "bucket" {
  value = "${aws_s3_bucket.b.id}"
}

output "etag"{
  value = "${aws_s3_bucket.b.id}"
}

 