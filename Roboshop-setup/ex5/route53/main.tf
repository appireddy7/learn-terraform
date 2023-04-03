resource "aws_route53_record" "record" {
  zone_id = "Z094015313BESRDU9JXJH"
  name    = "${var.component}-dev.devopsar.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "private_ip" {}
variable "component" {}