variable "vpc_cidr_block" {
    type         = string
    description  = "this is the CIDR Block for my vpc_1"
}

variable "env" {
    type          = string
    description   = "Name of the environment"

  }

variable "project_name" {
    type          = string
    description   = "this is the project name"

}
variable "cidr_pub_sub" {
    type          = string
    description   = "this cidr is for the public subnet 1"
}

variable "cidr_pri_sub"{
    type          = string
    description   = "this cidr is for the private subnet 1"
}

variable "open_cidr_block" {
    type = string
    description = "this is an open cidr block"
}


