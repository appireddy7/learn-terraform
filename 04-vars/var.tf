variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}

variable "cli" {}

output "cli" {
  value = var.cli
}

variable "sample5" {
  default = "Hello"
}
output "sample5" {
  value = var.sample5
}

variable "sample6" {
  default = [
    "Hello",
     1234,
    true
  ]
}

output "sample6" {
  value = var.sample6
}
variable "sample7" {
  default = {
    string = "Hello",
    number =  1234,
    boolean = true
  }
}

output "sample7" {
  value = var.sample7
}