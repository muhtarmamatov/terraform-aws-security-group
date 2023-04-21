variable "project" {
  type        = string
  description = "Name of project this VPC is meant to house"
}

variable "environment" {
  type        = string
  description = "Name of environment this VPC is targeting"
}


variable "repository" {
  type        = string
  default     = "https://github.com/muhtarmamatov/terraform-aws-security-group.git"
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "managedby" {
  type        = string
  default     = "hello@example.com"
  description = "ManagedBy, eg 'Administrator'"
}

variable "vpc_id" {
  type        = string
  description = "Your VPC ID"
}

variable "name" {
  type        = string
  description = "Your Security Group Name."
}

variable "description" {
  type        = string
  description = "Description for your Security Group"
}


variable "ingress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of objects like: {\"description\": \"\", \"from_port\": x, \"to_port\": x, \"protocol\": \"\", \"cidr_block\": \"\"}"
}

variable "egress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of objects like: {\"description\": \"\", \"from_port\": x, \"to_port\": x, \"protocol\": \"\", \"cidr_block\": \"\",}"
}