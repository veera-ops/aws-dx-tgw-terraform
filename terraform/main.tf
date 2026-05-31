resource "aws_ec2_transit_gateway" "tgw" {

  description     = var.tgw_name

  amazon_side_asn = var.amazon_side_asn

  tags = {
    Name = var.tgw_name
  }
}
