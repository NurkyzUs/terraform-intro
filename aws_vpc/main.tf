### create VPC 
resource "aws_vpc" "vpc_1" {
  cidr_block = var.vpc_cidr_block
  
  tags = local.common_tags
}

### Internet Gateway

resource "aws_internet_gateway" "int_gateway" {
  vpc_id = aws_vpc.vpc_1.id                      

  tags = local.common_tags
}

### to create a NAT Gateway we need to create EIP first (on NAT config EIP is required)
resource "aws_eip" "eip_for_nat" {
  vpc = true

  tags = local.common_tags
}

#### a NAT gateway

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.eip_for_nat.id  
  subnet_id     = aws_subnet.pri_subnet1.id 

  tags = local.common_tags
}     