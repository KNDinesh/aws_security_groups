# Extracting security group id
output "security_group_id" {
  description = "The ID of the created security group"
  value       = aws_security_group.security_groups.id
}
