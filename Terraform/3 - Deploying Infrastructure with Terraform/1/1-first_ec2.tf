provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATV5HPRFNOWLG2VDU"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}


//terraform init
//terraform plan
//terraform apply