
provider "aws" {
    region = "ap-south-1" 
    access_key = "AKIAYWDAFQGD3CUTSB7Q"
    secret_key = "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"
}


terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
    profile = "learner"  
    access_key = "AKIAYWDAFQGD3CUTSB7Q"
    secret_key = "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"  
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
    instance_type = "t2.micro"
    ami = "ami-0667149a69bc2c367"
#    key_name = "new"
}


