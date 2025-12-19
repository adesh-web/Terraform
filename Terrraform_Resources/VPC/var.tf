## Variable for VPC

variable "cidr_block" {
    default = "10.0.0.0/16"     #------> this value goes into VPC.tf file line(6)
}

## Variable for Subnet

variable "subnet_cidr_block" {
    default = "10.0.1.0/24"      #-----> this value goes into subnet.tf file  line(3)
}

variable "availability_zone" {
    default = "eu-north-1b"      #-----> this value goes into subnet.tf file line(4) 
}