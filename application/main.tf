provider "aws" {
  region = "${var.region}"
}

locals {
  tags = {
    Name = "Terraform"
  }
}

resource "aws_vpc" "main"{
    cidr_block = "${var.cidr_block}"

    tags = "${local.tags}"
}

resource "aws_internet_gateway" "gw"{
  vpc_id = "${aws_vpc.main.id}"

  tags = "${local.tags}"
}