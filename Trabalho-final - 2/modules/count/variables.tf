variable "aws_region" {
  description = "The AWS region to create things in."
  type        = string
  default     = "us-east-1"
}

variable "aws_amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-087c17d1fe0178315"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "key_name" {
  type    = string
  default = "vockey"
}

variable "path_to_key" {
  type    = string
  default = "/home/vscode/.ssh/vockey.pem"
}

variable "instance_username" {
  type    = string
  default = "ec2-user"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "project" {
  type    = string
  default = "fiap-lab"
}
