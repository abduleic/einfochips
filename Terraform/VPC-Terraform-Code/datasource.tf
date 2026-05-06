data "aws_vpc" "existing_vpc" {
  id = var.vpc_id
}

data "aws_route_table" "existing_public_rt" {
  route_table_id = var.public_route_table_id
}

data "aws_nat_gateway" "existing_nat" {
  id = var.nat_gateway_id
}

data "aws_internet_gateway" "existing-igw" {
  internet_gateway_id = var.internet_gateway_id
}

data "aws_availability_zones" "available" {}
