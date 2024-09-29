resource "aws_vpc" "boundary_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "${var.prefix}-boundary-vpc"
  }
}

resource "aws_internet_gateway" "boundary_gateway" {
  vpc_id = aws_vpc.boundary_vpc.id

  tags = {
    Name = "${var.prefix}-boundary-gateway"
  }
}

resource "aws_subnet" "boundary_public_subnet1" {
  vpc_id = aws_vpc.boundary_vpc.id

  cidr_block        = "10.0.1.0/24"
  availability_zone = var.aws_zone1

  tags = {
    Name = "${var.prefix}-boundary-public_subnet1"
  }
}

resource "aws_subnet" "boundary_public_subnet2" {
  vpc_id = aws_vpc.boundary_vpc.id

  cidr_block        = "10.0.2.0/24"
  availability_zone = var.aws_zone2

  tags = {
    Name = "${var.prefix}-boundary-public_subnet2"
  }
}

resource "aws_subnet" "boundary_public_subnet3" {
  vpc_id = aws_vpc.boundary_vpc.id

  cidr_block        = "10.0.3.0/24"
  availability_zone = var.aws_zone3

  tags = {
    Name = "${var.prefix}-boundary-public_subnet3"
  }
}

resource "aws_route_table" "boundary_public_route_table" {
  vpc_id = aws_vpc.boundary_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.boundary_gateway.id
  }

  tags = {
    Name = "${var.prefix}-boundary-public-route-table"
  }
}

resource "aws_route_table_association" "boundary_route_table_association1" {
  subnet_id      = aws_subnet.boundary_public_subnet1.id
  route_table_id = aws_route_table.boundary_public_route_table.id
}

resource "aws_route_table_association" "boundary_route_table_association2" {
  subnet_id      = aws_subnet.boundary_public_subnet2.id
  route_table_id = aws_route_table.boundary_public_route_table.id
}

resource "aws_route_table_association" "boundary_route_table_association3" {
  subnet_id      = aws_subnet.boundary_public_subnet3.id
  route_table_id = aws_route_table.boundary_public_route_table.id
}