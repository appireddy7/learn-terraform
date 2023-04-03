variable "test" {
  default = {
    "catalogue" = {
      "private_ip" = "172.31.14.249"
    }
    "user" = {
      "private_ip" = "172.31.4.195"
    }
  }

}


output "test" {
  value = var.test
}