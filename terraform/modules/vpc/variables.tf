variable "name" {
  description = "Prefixo da VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR da VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}