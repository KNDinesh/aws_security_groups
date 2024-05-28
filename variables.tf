variable "description" {
  description = "Description for the security group"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
}

variable "egress_rules" {
  description = "List of egress rules for the security group"
  type        = list(object({
    cidr_blocks      = list(string)
    description      = string
    from_port        = number
    ipv6_cidr_blocks = list(string)
    prefix_list_ids  = list(string)
    protocol         = string
    security_groups  = list(string)
    self             = bool
    to_port          = number
  }))
}

variable "ingress_rules" {
  description = "List of ingress rules for the security group"
  type        = list(object({
    cidr_blocks      = list(string)
    description      = string
    from_port        = number
    ipv6_cidr_blocks = list(string)
    prefix_list_ids  = list(string)
    protocol         = string
    security_groups  = list(string)
    self             = bool
    to_port          = number
  }))
}

variable "name" {
  description = "Name of the security group"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the security group"
  type        = map(string)
  default     = {}
}