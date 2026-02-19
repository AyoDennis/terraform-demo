resource "local_file" "terraform-file" {
  content  = data.local_file.locally-created.content
  filename = var.filename

}

data "local_file" "locally-created" {
  filename = "adebola.txt"
}


# resource "random_pet" "pet-name" {
#   prefix    = var.prefix
#   separator = var.separator
#   length    = var.length
# }

