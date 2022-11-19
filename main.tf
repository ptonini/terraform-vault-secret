locals {
  backend_path = try(var.backend.path, var.backend)
}

resource "vault_generic_secret" "this" {
  path = "${local.backend_path}${var.path}"
  data_json = var.data_json
}