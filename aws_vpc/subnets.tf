#### create a public subnet to associate with public RT

resource "aws_subnet" "pub_subnet" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pub_sub

  tags = local.common_tags
}


#### create a private subnet to associate with private RT

resource "aws_subnet" "pri_subnet" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pri_sub

  tags = local.common_tags
}



