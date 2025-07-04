resource "aws_security_group" "nginx_sg" {
  name        = "${var.name}-sg"
  description = "Allow HTTP and SSH access"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-sg"
  }
}

resource "aws_instance" "nginx" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.nginx_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
    #!/bin/bash
    set -xe

    apt-get update -y
    apt-get install -y nginx

    systemctl enable nginx
    systemctl start nginx

    echo "<h1>NGINX deployed via Terraform</h1>" > /var/www/html/index.html
  EOF

  tags = {
    Name = var.name
  }
}
