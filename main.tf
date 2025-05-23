
resource "aws_instance" "dev" {
  ami = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.large"
  count = var.istest == false ? 2 : 0
}
