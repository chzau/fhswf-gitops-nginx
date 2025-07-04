terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "nginx" {
  source        = "../../modules/ec2_nginx"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_id        = var.vpc_id
  name          = var.name
}

output "nginx_public_ip" {
  value = module.nginx.public_ip
}
