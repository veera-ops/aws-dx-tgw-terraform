resource "aws_ec2_transit_gateway" "tgw" {

  description     = var.tgw_name

  amazon_side_asn = var.amazon_side_asn

  tags = {
    Name = var.tgw_name
  }
}
resource "aws_dx_gateway" "dxgw" {

  name            = var.dxgw_name

  amazon_side_asn = var.amazon_side_asn
}
resource "aws_dx_gateway_association" "association" {

  dx_gateway_id         = aws_dx_gateway.dxgw.id

  associated_gateway_id = aws_ec2_transit_gateway.tgw.id

  allowed_prefixes = [
    "10.0.0.0/8"
  ]
}
