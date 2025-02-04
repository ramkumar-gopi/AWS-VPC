variable "public_subnet_cidr" {
  type        = list(string)
  description = "Public Subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidr" {
  type        = list(string)
  description = "Private Subnet"
  default     = ["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24"]
}

variable "vpc_cidr" {
  type = string
  description = "Provide VPC cidr block"
  default = "10.0.0.0/16"
}