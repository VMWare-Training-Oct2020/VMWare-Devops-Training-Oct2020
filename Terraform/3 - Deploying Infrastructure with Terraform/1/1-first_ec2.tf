provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATV5HPRFNOWLG2VDU"
  secret_key = "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"
}

# A resource block declares a resource of a given type ("aws_instance") 
# with a given local name ("myec2"). 
# The name is used to refer to this resource from elsewhere in the same Terraform module, 
# but has no significance outside that module's scope.
resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}


//terraform init
//terraform plan
//terraform apply