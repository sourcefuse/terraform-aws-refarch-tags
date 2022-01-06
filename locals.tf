locals {
  tags = merge(var.extra_tags, tomap({
    Environment  = var.environment
    Project      = var.project
    LastModified = formatdate("DD MMM YYYY hh:mm:ss ZZZ", timestamp())
    Role         = var.role
  }))
}
