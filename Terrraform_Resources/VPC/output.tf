output "vpc_id" {
     value =  aws_vpc.my_vpc.id
  
}
output "vpc_state" {
    value = aws_vpc.my_vpc.id 
}

output "vpc_arn" {
    value = aws_vpc.my_vpc.arn
}