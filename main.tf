provider "aws" {
    region = "ap-south-1" 
    access_key = "AKIAYWDAFQGD3CUTSB7Q"
    secret_key = "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"
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
    key_name = "new"
}

 # resource "aws_volume_attachment" "ebs_volume" {
 #   device_name = "/dev/xvdf"
 #   volume_id   = aws_ebs_volume.avolume.id
 #   instance_id = aws_instance.new_instance.id
#}

 # resource "null_resource" "new_instance" {
 
 #connection {
 #   type = "ssh"
 #   user = "centos"
 #  host = aws_instance.new_instance.public_ip
 #   private_key = file("/home/sarthak/Downloads/key1/new.pem") 
 #   agent       = true
    
 #   } 
  
 
  # provisioner "remote-exec" {
  #    inline = [
  #      "sudo touch file",
  #     "sudo yum install httpd -y",
  #      "sudo mkdir -p /var/lib/pgsql",
  #      "sudo yum install xfsprogs -y",  
  #      "sudo mkfs -t xfs /dev/xvdf",
  #      "sudo mount /dev/xvdf /var/lib/pgsql",
  #      "sudo yum install postgresql-server -y",
  #      "sudo postgresql-setup initdb",
  #      "sudo systemctl enable postgresql",
  #      "sudo systemctl start postgresql",     
  #  ]
  # }
 #}


#resource "aws_key_pair" "deployer" {
#  key_name   = "new"
#  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClVKA+Qwfg1WdZU1RhmISmMo1InXMZHsJ2DZ41b4pPovyS9RnTeCjxtHRfphNTd11NqYSOdRP2gFh45Rtjtk3Tcw2GcpAutBWXvLVVTUGr4UjxDbD1wWPgKOMG4PyelkDG/w5QWZh/HHWAKhBi+K8BAEUGGgJYB3YHe5mfcaFAJ/L8TOl/tSc0WoiAMASJaSKiDv+OpgI7/3JU1cZILIrkW/cFrsTZbcXO0h9HDximuiJSq2E6FSQ4tmb5UhsIwkt1Q+Km4UsB/9pRbeMkEC2QxLdDVOlSkjSx2qiMgGC7igUf5hNaVNXdHiHr+1DhYKHS4ff1FXUa8Ykok3fryfaH sarthak@sarthak-ThinkPad-L14-Gen-2"
#}


