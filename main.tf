terraform {
  cloud {
    organization = "Softdream-LLC"
    workspaces {
      name = "Maryland"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">=1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "serge_ec2_multiple_ips" {
  ami                    = var.ami
  availability_zone      = var.az
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg
  key_name               = var.key_name


  tags = {
    Owner = var.owner
    Name  = "serge_ec2_multiple_ips"
  }
}

resource "aws_network_interface" "extra_ips" {
  subnet_id         = var.subnet
  security_groups   = var.sg
  private_ips_count = var.number_addresses
  attachment {
    instance     = aws_instance.serge_ec2_multiple_ips.id
    device_index = 1
  }
}
