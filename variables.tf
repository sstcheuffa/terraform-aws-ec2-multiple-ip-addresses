variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "c3.large"
}

variable "number_addresses" {
  description = "Number of IP addresses"
  type        = number
  default     = 3
}

variable "sg" {
  description = "Security group"
  type        = set(any)
  default     = ["sg-0ea42b89a155cbc93"]
}

variable "key_name" {
  description = "key pair"
  type        = string
  default     = "aws-csaa"
}

variable "ami" {
  description = "ami"
  type        = string
  default     = "ami-05fa00d4c63e32376"
}

variable "az" {
  description = "Availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "subnet" {
  description = "Subnet"
  type        = string
  default     = "subnet-0e88957fa2fb2798f"
}


variable "owner" {
  description = "Instance type"
  type        = string
  default     = "Serge"
}