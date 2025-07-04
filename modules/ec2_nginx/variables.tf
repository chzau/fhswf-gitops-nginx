variable "ami_id" {
  description = "AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type (e.g. t2.micro)"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name to access the instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the instance should be created"
  type        = string
}

variable "name" {
  description = "Name tag for the instance and resources"
  type        = string
}
