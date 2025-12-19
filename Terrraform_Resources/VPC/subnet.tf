resource "aws_subnet" "my-subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr_block               #------> we refer range from variable.tf file
    availability_zone = var.availability_zone #------> we refer zone from variable.tf file

    tags = {
        Name = "main_vpc"
    }
  
}