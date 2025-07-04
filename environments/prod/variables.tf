variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-central-1"
}

variable "ami_id" {
  description = "AMI to use for the NGINX EC2 instance"
  type        = string
  default     = "ami-02003f9f0fde924ea"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the existing SSH key"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC to deploy into"
  type        = string
}

variable "name" {
  description = "Resource name tag"
  type        = string
}
