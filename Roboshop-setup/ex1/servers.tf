data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "frontend-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "mongodb"
  }
}


resource "aws_route53_record" "mongodb" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "mongodb-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "cart" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "cart-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "catalogue-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "shipping" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "shipping"
  }
}



resource "aws_route53_record" "shipping" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "shipping-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "mysql" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "mysql"
  }
}



resource "aws_route53_record" "mysql" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "mysql-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "user" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "user-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "redis" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "redis-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "rabbitmq"
  }
}


resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "rabbitmq-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "payment-dev.devopsar.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.payment.private_ip]
}



output "payment" {
 value = aws_instance.payment.private_ip
}
