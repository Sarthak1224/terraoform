
provider "aws" {
    region = "ap-south-1" 
    access_key = "AKIAYWDAFQGD3CUTSB7Q"
    secret_key = "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"
}


resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
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


