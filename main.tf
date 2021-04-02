# Configure the AWS Provider
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource random_id bucket {
  byte_length = 8
}

module "bucket" {
  source = "./s3"
  
  name = "my-bucket-${random_id.bucket.hex}"

}
module "bucket-2" {
source = "./s3"
  
  name = "my-bucket-2-${random_id.bucket.hex}"

}
