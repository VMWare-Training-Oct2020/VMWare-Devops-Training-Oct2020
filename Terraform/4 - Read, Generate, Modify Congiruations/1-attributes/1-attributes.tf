provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATV5HPRFNNVCXRWUN"
  secret_key = "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"
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb
}

resource "aws_s3_bucket" "atinbucket2020" {
  bucket = "atinbucket2020"
}

output "mys3bucket" {
  value = aws_s3_bucket.atinbucket2020
}
