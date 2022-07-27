

variable "infra_env" {
  type        = string
  description = "infrastructure environment"
}

variable "vpc_cidr" {
  type        = string
  description = "The IP range to use for the vpc"
  default     = "10.0.0.0/16"
}

variable "public_subnet_numbers" {
  type = map(number)

  description = "Map of AZ to a number that should be used for public subnets"

  default = {
    "ap-southeast-1a" = 1
    "ap-southeast-2a" = 2
    "ap-southeast-3a" = 3
  }
}