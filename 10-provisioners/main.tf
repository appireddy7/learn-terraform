resource "aws_instance" "ec2" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-080fb8452a4ae0b04"]
  tags                   = {
    Name = "dev"
  }


  provisioner "remote-exec" {
    connection {
      user     = "root"
      password = "DevOps321"
      host     = self.public_ip
    }


    inline = [
      "echo hello"
    ]
  }
}