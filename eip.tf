resource "aws_eip" "nat_ip" {
  tags = {
    Name = "Project Ram EIP"
  }
}