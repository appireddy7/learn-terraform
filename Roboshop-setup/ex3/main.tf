data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "instances" {
  for_each              = var.instances
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags                  = {
    Name                = var.instances[count.index]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name   = "catalogue"
      type   = "t3.micro"
    }

    user = {
      name  = "user"
      type  = "t3.small"
    }

    cart = {
      name = "cart"
      type = "t3.micro"
    }
  }
}

output "ec2" {
  value = [ for k, v in aws_instance.instances : "${k}  -${v.public_ip}"]
}



