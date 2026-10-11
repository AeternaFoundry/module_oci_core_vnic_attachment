output "core_vnic_attachments_id" {
  description = "Map of id values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no id are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_vnic_attachments_availability_domain" {
  description = "Map of availability_domain values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no availability_domain are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_vnic_attachments_compartment_id" {
  description = "Map of compartment_id values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_vnic_attachments_create_vnic_details" {
  description = "Map of create_vnic_details values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no create_vnic_details are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => one(v.create_vnic_details) if v.create_vnic_details != null && length(v.create_vnic_details) > 0 }
}
output "core_vnic_attachments_display_name" {
  description = "Map of display_name values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no display_name are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_vnic_attachments_instance_id" {
  description = "Map of instance_id values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no instance_id are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "core_vnic_attachments_nic_index" {
  description = "Map of nic_index values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no nic_index are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.nic_index if v.nic_index != null }
}
output "core_vnic_attachments_state" {
  description = "Map of state values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no state are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_vnic_attachments_subnet_id" {
  description = "Map of subnet_id values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no subnet_id are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "core_vnic_attachments_time_created" {
  description = "Map of time_created values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no time_created are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_vnic_attachments_vlan_id" {
  description = "Map of vlan_id values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no vlan_id are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.vlan_id if v.vlan_id != null && length(v.vlan_id) > 0 }
}
output "core_vnic_attachments_vlan_tag" {
  description = "Map of vlan_tag values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no vlan_tag are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.vlan_tag if v.vlan_tag != null }
}
output "core_vnic_attachments_vnic_id" {
  description = "Map of vnic_id values across all core_vnic_attachments, keyed the same as var.core_vnic_attachments except keys with no vnic_id are omitted"
  value       = { for k, v in oci_core_vnic_attachment.core_vnic_attachments : k => v.vnic_id if v.vnic_id != null && length(v.vnic_id) > 0 }
}

