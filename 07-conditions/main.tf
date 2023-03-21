resource "aws_instance" "test" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}
variable "instance_type" {}