provider "aws" {
  region = "eu-north-1"
}

resource "aws_launch_template" "template" {
    name_prefix = "my_template"
  image_id      = "ami-0fa91bc90632c73c9"
  instance_type = "t3.micro"


  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              echo "Hello, World!" > /var/www/html/index.html
              systemctl start nginx
                systemctl enable nginx
              EOF

    tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "example-asg-instance"           
}
    }
}


