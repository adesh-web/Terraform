
variable "ami_id" {
    default = "ami-0fa91bc90632c73c9"
}

variable "key_name" {
    default = "my_keypair"
  
}


variable "instance_type" {
    default = "t3.micro"
}

variable "env" {
    default = "dev"
}
