variable "name" {
  default = {
    fruit_name = "apple"
  }
}


variable "details" {
  default = {
    quantity = 100
    rating   = 3.4
  }
}

output "fruit" {
  value = merge(var.name, var.details)
}
