variable "ec2_traffic_mirror_filter_rules" {
  description = <<EOT
Map of ec2_traffic_mirror_filter_rules, attributes below
Required:
    - destination_cidr_block
    - rule_action
    - rule_number
    - source_cidr_block
    - traffic_direction
    - traffic_mirror_filter_id
Optional:
    - description
    - protocol
    - region
    - destination_port_range (block):
        - from_port (optional)
        - to_port (optional)
    - source_port_range (block):
        - from_port (optional)
        - to_port (optional)
EOT

  type = map(object({
    destination_cidr_block   = string
    rule_action              = string
    rule_number              = number
    source_cidr_block        = string
    traffic_direction        = string
    traffic_mirror_filter_id = string
    description              = optional(string)
    protocol                 = optional(number)
    region                   = optional(string)
    destination_port_range = optional(object({
      from_port = optional(number)
      to_port   = optional(number)
    }))
    source_port_range = optional(object({
      from_port = optional(number)
      to_port   = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ec2_traffic_mirror_filter_rules : (
        v.destination_port_range == null || (v.destination_port_range.from_port == null || (v.destination_port_range.from_port >= 0 && v.destination_port_range.from_port <= 65535))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_traffic_mirror_filter_rules : (
        v.destination_port_range == null || (v.destination_port_range.to_port == null || (v.destination_port_range.to_port >= 0 && v.destination_port_range.to_port <= 65535))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_traffic_mirror_filter_rules : (
        v.source_port_range == null || (v.source_port_range.from_port == null || (v.source_port_range.from_port >= 0 && v.source_port_range.from_port <= 65535))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_traffic_mirror_filter_rules : (
        v.source_port_range == null || (v.source_port_range.to_port == null || (v.source_port_range.to_port >= 0 && v.source_port_range.to_port <= 65535))
      )
    ])
    error_message = "must be a valid port number (0-65535)"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

