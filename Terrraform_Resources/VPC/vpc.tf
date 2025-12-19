provider "aws" {
    region = "eu-north-1" 
}

resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_block 
    instance_tenancy = "default"

    tags = {
        Name = "My-vpc"

    }
}

