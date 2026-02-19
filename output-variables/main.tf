resource "local_file" "file" {
  content  = var.content
  filename = "file-${random_pet.pet-name.id}"
}


resource "random_pet" "pet-name" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}

