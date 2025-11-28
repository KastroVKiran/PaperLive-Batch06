provider  "aws" {
    region = "us-east-1"
}

variable "az_list" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  
}

output "az_count" {
    value = length(var.az_list)
}

----
provider  "aws" {
    region = "us-east-1"
}

variable "az_list" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  
}

output "az_count" {
    value = element(var.az_list, 0)
}
----
provider "aws" {
    region = "us-east-1"
}

variable "public_subnets" {
    type = list(string)
    default = ["subnet11", "subnet22"]
}

variable "private_subnets" {
    type = list(string)
    default = ["subnet33", "subnet44"]
}

output "all_subnets" {
    value = concat(var.public_subnets, var.private_subnets)
}
----
provider "aws" {
    region = "us-east-1"
}

variable "tag_keys" {
    type = list(string)
    default = ["Name", "Environment"]
}

variable "tag_values" {
    type = list(string)
    default = ["Kastro", "Production"]
}

output "ec2_tags" {
    value = zipmap(var.tag_keys, var.tag_values)
}















