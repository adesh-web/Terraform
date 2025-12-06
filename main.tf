provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.aws_sg.id]  # associating security group with instance

   user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install nginx -y
    echo "<h1> Hello world " > /var/www/html/index.html
    EOF

  tags = {
    env = var.env
  }
}

resource "aws_security_group" "aws_sg" {     # to create security group
  name        = "sg_name"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-0d31f38c0561ceb7a"

    ingress {                               # inbound rule
    from_port   = 80  
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    egress {                               # outbound rule
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
  
    tags = {
    env = var.env
  }
}





