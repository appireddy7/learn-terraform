data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags                  = {
    Name                = var.instances[count.index]
  }
}

variable "instances" {
  default = ["cart","catalogue","user","payment","shipping","rabbitmq"]
}

output "public_ip" {
  value = aws_instance.frontend.*.public_ip
}



