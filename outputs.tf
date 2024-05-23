output "instance_details" {
  value = {
    web = {
      instance_name = local.vm_web_name
      external_ip   = yandex_compute_instance.web.network_interface.0.nat_ip_address
      fqdn          = yandex_compute_instance.web.fqdn
    }
    db = {
      instance_name = local.vm_db_name
      external_ip   = yandex_compute_instance.db.network_interface.0.nat_ip_address
      fqdn          = yandex_compute_instance.db.fqdn
    }
  }
}
