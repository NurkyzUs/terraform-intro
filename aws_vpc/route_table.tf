#### create a public Route Table and attach(route) to the  internet gateway ###

resource "aws_route_table" "pub-route-table" {
  vpc_id      = aws_vpc.vpc_1.id
  
  route {
  cidr_block  = var.open_cidr_block
  gateway_id  = aws_internet_gateway.int_gateway.id
  }
  tags = local.common_tags
}

#### associate public route table with 3 public subnets

resource "aws_route_table_association" "pub-subnet1" {
  route_table_id = aws_route_table.pub-route-table.id
  subnet_id = aws_subnet.pub_subnet1.id
}

resource "aws_route_table_association" "pub-subnet2" {
  route_table_id = aws_route_table.pub-route-table.id
  subnet_id = aws_subnet.pub_subnet2.id
}

resource "aws_route_table_association" "pub-subnet3" {
  route_table_id = aws_route_table.pub-route-table.id
  subnet_id = aws_subnet.pub_subnet3.id
}

#### create private route table and attach (route) it to NAT gateway###

resource "aws_route_table" "pri-route-table" {
  vpc_id          = aws_vpc.vpc_1.id
  
  route {
  cidr_block      = var.open_cidr_block
  nat_gateway_id  = aws_nat_gateway.nat_gateway.id
  }
  tags = local.common_tags
 }

 #### associate private route table with 3 subnets ####

resource "aws_route_table_association" "pri-subnet1" {
  route_table_id = aws_route_table.pri-route-table.id
  subnet_id = aws_subnet.pri_subnet1.id
}

resource "aws_route_table_association" "pri-subnet2" {
  route_table_id = aws_route_table.pri-route-table.id
  subnet_id = aws_subnet.pri_subnet2.id
}

resource "aws_route_table_association" "pri-subnet3" {
  route_table_id = aws_route_table.pri-route-table.id
  subnet_id = aws_subnet.pri_subnet3.id
}