data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count = 5
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
}

resource "aws_instance" "user" {
  count = 2
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
}