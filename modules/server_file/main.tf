resource "local_file" "config" {
  filename = "${path.root}/server_${var.server_name}.txt"
  content  = "Serveur: ${var.server_name}\nIP: ${var.server_ip}\nRôle: ${var.server_role}\n"
}
