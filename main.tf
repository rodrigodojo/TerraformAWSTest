# Configure the AWS Provider
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource random_id bucket {
  byte_length = 8
}

resource random_id bucket_2 {
  byte_length = 4
}

module "bucket" {
  source = "./s3"

  name       = "my-bucket-${random_id.bucket.hex}"
  versioning = true

  tags = {
    "Name" = "Meu bucket de anotações"
  }

  create_object = true
  object_key    = "files/${random_id.bucket.dec}.txt"
  object_source = "arquivo.txt"
}

module "bucket-2" {
  source = "./s3"

  name = "my-bucket-2-${random_id.bucket_2.hex}"
}
