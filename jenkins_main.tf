
provider "aws" {
    region = "ap-south-1" 
    access_key = "AKIAYWDAFQGD3CUTSB7Q"
    secret_key = "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"
}


terraform {
  backend "s3" {
    bucket = "my-state-bucket-name"
    key    = "my-terraform-project"
    region = "ap-south-1"
    acl    = "private"
  }
}


resource "aws_ebs_volume" "avolume" {
    availability_zone = "ap-south-1a"
    size              =  1
    
    tags = {
        Name = "additional_ebs_volume"
    }
}




  resource "aws_instance" "new_instance" {
    region = "ap-south-1"
    instance_type = "t2.micro"
    ami = "ami-0667149a69bc2c367"
#    key_name = "new"
}


