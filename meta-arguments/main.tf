
# resource "local_file" "terraform-file" {
#   content  = var.content
#   filename = var.filename[count.index]
#   count = length(var.filename)

# }


# We modify the resource to use for_each
# resource "local_file" "terraform-file" {
#   content  = var.content
#   filename = each.value
#   for_each = var.filename

# }


# Using list variable, but set in main.tf

resource "local_file" "terraform-file" {
  content  = var.content
  filename = each.value
  for_each = toset(var.filename)

}



# resource "random_pet" "pet-name" {
#   prefix    = var.prefix
#   separator = var.separator
#   length    = var.length
# }

