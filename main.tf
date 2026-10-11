resource "oci_core_vnic_attachment" "core_vnic_attachments" {
  for_each = var.core_vnic_attachments

  instance_id  = each.value.instance_id
  display_name = each.value.display_name
  nic_index    = each.value.nic_index

  create_vnic_details {
    assign_ipv6ip             = each.value.create_vnic_details.assign_ipv6ip
    assign_private_dns_record = each.value.create_vnic_details.assign_private_dns_record
    assign_public_ip          = each.value.create_vnic_details.assign_public_ip
    defined_tags              = each.value.create_vnic_details.defined_tags
    display_name              = each.value.create_vnic_details.display_name
    freeform_tags             = each.value.create_vnic_details.freeform_tags
    hostname_label            = each.value.create_vnic_details.hostname_label
    dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
      for_each = each.value.create_vnic_details.ipv6address_ipv6subnet_cidr_pair_details != null ? each.value.create_vnic_details.ipv6address_ipv6subnet_cidr_pair_details : []
      content {
        ipv6address     = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
        ipv6id          = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6id
        ipv6subnet_cidr = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
      }
    }
    nsg_ids                = each.value.create_vnic_details.nsg_ids
    private_ip             = each.value.create_vnic_details.private_ip
    private_ip_id          = each.value.create_vnic_details.private_ip_id
    route_table_id         = each.value.create_vnic_details.route_table_id
    security_attributes    = each.value.create_vnic_details.security_attributes
    skip_source_dest_check = each.value.create_vnic_details.skip_source_dest_check
    subnet_cidr            = each.value.create_vnic_details.subnet_cidr
    subnet_id              = each.value.create_vnic_details.subnet_id
    vlan_id                = each.value.create_vnic_details.vlan_id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

