variable "core_vnic_attachments" {
  description = <<EOT
Map of core_vnic_attachments, attributes below
Required:
    - instance_id
    - create_vnic_details (block):
        - assign_ipv6ip (optional)
        - assign_private_dns_record (optional)
        - assign_public_ip (optional)
        - defined_tags (optional)
        - display_name (optional)
        - freeform_tags (optional)
        - hostname_label (optional)
        - ipv6address_ipv6subnet_cidr_pair_details (optional, block):
            - ipv6address (optional)
            - ipv6id (optional)
            - ipv6subnet_cidr (optional)
        - nsg_ids (optional)
        - private_ip (optional)
        - private_ip_id (optional)
        - route_table_id (optional)
        - security_attributes (optional)
        - skip_source_dest_check (optional)
        - subnet_cidr (optional)
        - subnet_id (optional)
        - vlan_id (optional)
Optional:
    - display_name
    - nic_index
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    instance_id  = string
    display_name = optional(string)
    nic_index    = optional(number)
    create_vnic_details = object({
      assign_ipv6ip             = optional(bool)
      assign_private_dns_record = optional(bool)
      assign_public_ip          = optional(string)
      defined_tags              = optional(map(string))
      display_name              = optional(string)
      freeform_tags             = optional(map(string))
      hostname_label            = optional(string)
      ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
        ipv6address     = optional(string)
        ipv6id          = optional(string)
        ipv6subnet_cidr = optional(string)
      })))
      nsg_ids                = optional(set(string))
      private_ip             = optional(string)
      private_ip_id          = optional(string)
      route_table_id         = optional(string)
      security_attributes    = optional(map(string))
      skip_source_dest_check = optional(bool)
      subnet_cidr            = optional(string)
      subnet_id              = optional(string)
      vlan_id                = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

