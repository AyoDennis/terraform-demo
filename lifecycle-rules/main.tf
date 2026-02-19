resource "local_file" "file" {
  content  = var.content
  filename = var.filename

  lifecycle {
    ignore_changes = all
  }
}


resource "random_pet" "pet-name" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}

