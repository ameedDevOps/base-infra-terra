variable "region" {
  description = "The AWS region to deploy resources in"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "The availability zones to use"
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"
}

# variable "ami_id" {
#   description = "The AMI ID to use for the instances"
#   default     = "ami-0c55b159cbfafe1f0"  # Example for Amazon Linux 2 in us-west-2
# }

variable "key_name" {
  description = "The name of the key pair"
  default     = "my-key-pair"
}

variable "key_pair_parameter_name" {
  description = "The name of the Parameter Store entry for the key pair"
  default     = "/ec2/keypair/my-key-pair"
}
