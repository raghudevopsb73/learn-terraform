variable "sample" {
  default = 100
}

variable "sample1" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

## Sometime if varaible/any reference with the combination of some other string then we have to access those in ${}

output "sample-ext" {
  value = "Value of Sample & Sample1 - ${var.sample} - ${var.sample1}"
}

# Variable Data types
# 1. string
# 2. number
# 3. Boolean

# Variable Types
# In Ansible - 1. Plain Key, Value, 2. List 3. Map/Dict

# In Terraform
# 1. Plain
# 2. List
# 3. Map

## Plain
variable "course" {
  default = "DevOps Training"
}

# List
variable "courses" {
  default = [
    "DevOps",
    "AWS",
    "Python"
  ]
}

## Map
variable "course_details" {
  default = {
    DevOps = {
      name     = "DevOps"
      timing   = "10am"
      duration = 90
    }
    AWS = {
      name     = "AWS"
      timing   = "11am"
      duration = 30
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses
}

output "course_details" {
  value = var.course_details
}

