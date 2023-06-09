//resource "aws_instance" "web" {
//  count         = length(var.instances)
//  ami           = data.aws_ami.example.id
//  instance_type = "t3.micro"
//
//  tags = {
//    Name = "HelloWorld-${count.index}"
//  }
//}

resource "aws_instance" "web" {
  count         = length(var.instances)
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = element(var.instances, count.index)
  }
}


data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

variable "instances" {
  default = ["frontend", "catalogue", "cart"]
}

