module "servers" {
  for_each = var.servers

  source      = "./modules/server_file"
  server_name = each.key
  server_ip   = each.value.ip
  server_role = each.value.role
}

resource "local_file" "ansible_inventory" {
  filename = "${path.module}/hosts.ini"
  content  = join("\n", concat(
    ["[all_servers]"],
    [for name, config in var.servers : "${name} ansible_host=${config.ip} role=\"${config.role}\""]
  ))
}
