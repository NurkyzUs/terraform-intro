variable "ami" {
    type = string
    description = "this is an ami for the instances" ### us-east-1
}

variable "instance_type" {
    type = string
    description = "this is an instance type for the ec2 instances"
}

variable "env" {
    type = string
    description = "this is an environment"
}

variable "availability_zone" {
    type = string
    description = "AZ for the instance"
}