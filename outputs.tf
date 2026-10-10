output "ec2_traffic_mirror_filter_rules_id" {
  description = "Map of id values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_traffic_mirror_filter_rules_arn" {
  description = "Map of arn values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ec2_traffic_mirror_filter_rules_description" {
  description = "Map of description values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ec2_traffic_mirror_filter_rules_destination_cidr_block" {
  description = "Map of destination_cidr_block values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.destination_cidr_block if v.destination_cidr_block != null && length(v.destination_cidr_block) > 0 }
}
output "ec2_traffic_mirror_filter_rules_destination_port_range" {
  description = "Map of destination_port_range values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => one(v.destination_port_range) if v.destination_port_range != null && length(v.destination_port_range) > 0 }
}
output "ec2_traffic_mirror_filter_rules_protocol" {
  description = "Map of protocol values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.protocol if v.protocol != null }
}
output "ec2_traffic_mirror_filter_rules_region" {
  description = "Map of region values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_traffic_mirror_filter_rules_rule_action" {
  description = "Map of rule_action values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.rule_action if v.rule_action != null && length(v.rule_action) > 0 }
}
output "ec2_traffic_mirror_filter_rules_rule_number" {
  description = "Map of rule_number values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.rule_number if v.rule_number != null }
}
output "ec2_traffic_mirror_filter_rules_source_cidr_block" {
  description = "Map of source_cidr_block values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.source_cidr_block if v.source_cidr_block != null && length(v.source_cidr_block) > 0 }
}
output "ec2_traffic_mirror_filter_rules_source_port_range" {
  description = "Map of source_port_range values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => one(v.source_port_range) if v.source_port_range != null && length(v.source_port_range) > 0 }
}
output "ec2_traffic_mirror_filter_rules_traffic_direction" {
  description = "Map of traffic_direction values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.traffic_direction if v.traffic_direction != null && length(v.traffic_direction) > 0 }
}
output "ec2_traffic_mirror_filter_rules_traffic_mirror_filter_id" {
  description = "Map of traffic_mirror_filter_id values across all ec2_traffic_mirror_filter_rules, keyed the same as var.ec2_traffic_mirror_filter_rules"
  value       = { for k, v in aws_ec2_traffic_mirror_filter_rule.ec2_traffic_mirror_filter_rules : k => v.traffic_mirror_filter_id if v.traffic_mirror_filter_id != null && length(v.traffic_mirror_filter_id) > 0 }
}

