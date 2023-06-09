variable "class" {
  default = "devops"
}

## Print the same in capital leetters
output "class" {
  value = var.class
}
