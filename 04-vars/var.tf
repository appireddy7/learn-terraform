#variable "sample" {
#  default = "Hello World"
#}
#
#output "sample" {
#  value = var.sample
#}
#
#variable "sample1" {}
#
#output "sample1" {
#  value = var.sample1
#}
#
#variable "cli" {}
#
#output "cli" {
#  value = var.cli
#}
#
#variable "sample5" {
#  default = "Hello"
#}
#
#
#variable "sample6" {
#  default = [
#    "Hello",
#     1234,
#    true
#  ]
#}
#
#
#variable "sample7" {
#  default = {
#    string = "Hello",
#    number =  1234,
#    boolean = true
#  }
#}
#
#output "types" {
#  value = "Variable sample5 = ${var.sample5}, First value in the list = ${var.sample6[0]}, Boolean value of map = ${var.sample7["boolean"]} "
#}

variable "d1" {
  default = [
    {
      course_name   = "Devops"
      trainer_name  = "Raghu"
    },
    {
      course_name   = "Aws"
      trainer_name  = "Ravi"
    }
  ]
}

output "course_names" {
  value = var.d1.*.course_name
}

output "trainer_names" {
  value = var.d1.*.trainer_name
}