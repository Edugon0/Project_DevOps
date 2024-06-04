resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "access remote via port 22(http)"

    ingress  {
        description     =  "ssh from VPC"
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "access remote via port 80(http)"

    ingress  {
        description     =  "HTTP from VPC"
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


  tags = {
    Name = "allow_http"
  }
}



resource "aws_security_group" "allow_egress" {
  name        = "allow_egress"
  description = "access remote egress"

    egress  {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
        ipv6_cidr_blocks     = ["::/0"]
    }


  tags = {
    Name = "allow_egress"
  }
}








