terraform {
  backend "s3" {
    bucket = "terraform-ar"
    key    = "05-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "aws_instance" "ec2" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "prod"
  }
}