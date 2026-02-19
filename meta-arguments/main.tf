resource "local_file" "terraform-file" {
  content  = var.content
  filename = var.filename[count.index]
  count = length(var.filename)

}


# resource "random_pet" "pet-name" {
#   prefix    = var.prefix
#   separator = var.separator
#   length    = var.length
# }

