variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_availability_zone" {
  type    = string
  default = "us-east-1b"
}

variable "instance" {
  type    = string
  default = "My-Wordpress-Instance"
}

variable "instance_blueprintid" {
  type    = string
  default = "wordpress"
}

variable "instance_bundleid" {
  type    = string
  default = "small_2_0"
}

variable "intance_key_pair" {
  type    = string
  default = "Wordpress-KP"
}

variable "static_ip" {
  type    = string
  default = "Wordpress-IP"
}

variable "static_ip_attachment" {
  type    = string
  default = "Wordpress-IP"
}
