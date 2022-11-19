output "this" {
  value = vault_generic_secret.this
}

output "data_path" {
  value = "${local.backend_path}data/${var.path}"
}