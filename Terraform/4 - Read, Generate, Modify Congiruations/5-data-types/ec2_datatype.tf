provider "aws" {
  region     = "us-west-2"
}

resource "aws_iam_user" "lb" {
  name = var.usernumber
  path = "/system/"
}