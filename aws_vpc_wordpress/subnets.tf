#### create 3 public subnets to associate with public RT

resource "aws_subnet" "pub_subnet1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pub_sub1

  tags = local.common_tags
}

resource "aws_subnet" "pub_subnet2" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pub_sub2

  tags = local.common_tags
}

resource "aws_subnet" "pub_subnet3" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pub_sub3

 tags = local.common_tags
}

#### create 3 private subnets

resource "aws_subnet" "pri_subnet1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pri_sub1

  tags = local.common_tags
}

resource "aws_subnet" "pri_subnet2" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pri_sub2

  tags = local.common_tags
}

resource "aws_subnet" "pri_subnet3" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.cidr_pri_sub3

  tags = local.common_tags

