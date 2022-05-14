terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"
    }
  }
}

provider "aws" {
  region                   = var.region
}

# Provide a static IP address to the Lightsail instance
resource "aws_lightsail_static_ip_attachment" "static_ip_attachment" {
  instance_name = aws_lightsail_instance.instance.name
  static_ip_name = var.static_ip_attachment
}

resource "aws_lightsail_static_ip" "static_ip" {
  name = var.static_ip
}

# Create a new Lightsail SSH Key Pair
resource "aws_lightsail_key_pair" "intance_key_pair" {
  name = var.intance_key_pair
}

# Create a new Wordpress Lightsail Instance
resource "aws_lightsail_instance" "instance" {
  name              = var.instance
  availability_zone = var.instance_availability_zone
  blueprint_id      = var.instance_blueprintid
  bundle_id         = var.instance_bundleid
  key_pair_name     = var.intance_key_pair
  tags = {
    Environment = "Development"
  }
}





