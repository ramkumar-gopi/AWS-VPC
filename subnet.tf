resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main.id
  for_each                = { for idx, cidr in var.public_subnet_cidr : idx => cidr }
  cidr_block              = each.value
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.azs.names[tonumber(each.key) % length(data.aws_availability_zones.azs.names)]
  tags = {
    Name = "Project Public Subnet ${each.key}"
  }

}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.main.id
  for_each                = { for idx, cidr in var.private_subnet_cidr : idx => cidr }
  cidr_block              = each.value
  map_public_ip_on_launch = false
  availability_zone       = data.aws_availability_zones.azs.names[tonumber(each.key) % length(data.aws_availability_zones.azs.names)]
  tags = {
    Name = "Project Private Subnet ${each.key}"
  }
}

data "aws_availability_zones" "azs" {
  state = "available"
}
