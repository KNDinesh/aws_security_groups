# # module.Security_Groups.aws_security_group.zing_Access:
resource "aws_security_group" "security_groups" {
  description = var.description
  vpc_id      = var.vpc_id

  egress  = var.egress_rules
  ingress = var.ingress_rules

  name  = var.name
}
