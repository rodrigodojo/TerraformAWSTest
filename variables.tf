variable "region" {
  default     = "us-east-1"
  description = "Main region"
}

variable "access_key" {
  default = "AKIAYXIFZ3QKE6NXHCDO"
}

variable "secret_key" {
  default = "t/zWTQGOtPsc9bsEI8WgCM/kbns4UmV8gJvlZ7Kq"
}

variable "ami" {
  default = "ami-0742b4e673072066f"
}

variable type {
  default = "t2.micro"
}

variable "ips" {
  type    = "list"
  default = ["3ffe:1900:4545:3:200:f8ff:fe21:67cf", "3ffe:1900:4545:3:200:f8ff:fe21:67cd"]
}

variable "tags" {
  type = "map"

  default = {
    "Name" = "Nodejs"
    "env"  = "Dev"
  }
}
