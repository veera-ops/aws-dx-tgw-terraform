output "tgw_id" {
  value = aws_ec2_transit_gateway.tgw.id
}

output "dxgw_id" {
  value = aws_dx_gateway.dxgw.id
}

output "association_id" {
  value = aws_dx_gateway_association.association.id
}
