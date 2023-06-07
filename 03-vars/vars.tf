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
  value = "Value of Sample - ${var.sample}"
}

