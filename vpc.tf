resource "aws_vpc" "vpc1" {
  cidr_block = var.awsvpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
    tags = {
    Name        = var.awsvpc_tag
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.subnet1_cidr[1]
  availability_zone = var.subnet1_az
  map_public_ip_on_launch = true

  tags = {
    Name        = var.subnet1_tag
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.subnet2_cidr
  availability_zone = var.subnet2_az
    tags = {
    Name        = var.subnet2_tag
  }
}

resource "aws_route_table" "table1" {
  vpc_id = aws_vpc.vpc1.id
    tags = {
    Name = var.table1_tag
  }
}

resource "aws_route_table" "table2" {
  vpc_id = aws_vpc.vpc1.id
      tags = {
    Name = var.table2_tag
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc1.id
    tags = {
    Name = var.igw_tag
  }
}