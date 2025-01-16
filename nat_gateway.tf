resource "aws_nat_gateway" "nat_gateway" {
  subnet_id     = aws_subnet.public_subnet["0"].id
  allocation_id = aws_eip.nat_ip.id
  tags = {
    Name = "Project Ram Nat Gateway"
  }
}