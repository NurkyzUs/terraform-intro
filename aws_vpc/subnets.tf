#### create a public subnet to associate with public RT

resource "aws_subnet" "pub_subnet1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pub_sub1

  tags = local.common_tags
}


#### create a private subnet to associate with private RT

resource "aws_subnet" "pri_subnet1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pri_sub1

  tags = local.common_tags
}



