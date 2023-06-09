module "instances" {
  for_each = var.instances
  source   = "./ec2"
  name     = each.key
}

variable "instances" {
  default = {

    frontend  = {}
    mongodb   = {}
    catalogue = {}
    redis     = {}
    user      = {}
    cart      = {}
    mysql     = {}
    shipping  = {}
    rabbitmq  = {}
    payment   = {}

  }
}