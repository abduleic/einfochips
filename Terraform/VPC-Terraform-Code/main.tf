## We are creating a Public subnet, Private Subnet, Pvt Route Table
## and using the existing VPC, IGW, NAT, Pubic RT through datasource reference


# Create Public subnet
resource "aws_subnet" "public_subnet1" {
  vpc_id                  = data.aws_vpc.existing_vpc.id
  cidr_block              = var.public_subnet_cidrs
  availability_zone_id    = data.aws_availability_zones.available.zone_ids[0]
  map_public_ip_on_launch = true

  tags = merge(local.common_tags, { Name = "public-subnet20" })
}

# Create private subnet
resource "aws_subnet" "private_subnet1" {
  vpc_id               = data.aws_vpc.existing_vpc.id
  cidr_block           = var.private_subnet_cidrs
  availability_zone_id = data.aws_availability_zones.available.zone_ids[0]

  tags = merge(local.common_tags, { Name = "private-subnet120" })
}

# Associate public subnet to existing public route table
resource "aws_route_table_association" "public_sub_association" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = data.aws_route_table.existing_public_rt.id
}

# Create pvt route table
resource "aws_route_table" "private_rt" {
  vpc_id = data.aws_vpc.existing_vpc.id

  tags = merge(local.common_tags, { Name = "private-rt120" })
}

# Add route in private RT via NAT gateway
resource "aws_route" "private_nat_route" {
  route_table_id         = aws_route_table.private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = data.aws_nat_gateway.existing_nat.id
}

# Associate pvt subnet to pvt rt
resource "aws_route_table_association" "private_sub_association" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_rt.id
}
