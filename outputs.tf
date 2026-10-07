output "generated_files" {
  description = "Liste des fichiers créés via le module"
  value       = [for s in module.servers : s.file_path]
}

output "ansible_inventory_path" {
  description = "Fichier d'inventaire Ansible généré"
  value       = local_file.ansible_inventory.filename
}
