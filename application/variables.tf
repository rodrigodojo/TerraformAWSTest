variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "private_a_cidr" {
  default = "192.168.6.0/23"
}

variable "ami" {
  default = "ami-0742b4e673072066f"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_pair" {
  default = "dojo"
}
