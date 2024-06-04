resource "aws_instance" "amb-prod" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  key_name = "terraform"
  security_groups = ["allow_ssh","allow_http", "allow_egress"]
  user_data = file("script.sh")

  tags = {
    Name = "amb-prod"
  }
}