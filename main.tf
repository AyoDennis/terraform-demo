# resource "local_file" "document1" {
#   content  = "This Instructor's name is ${var.ayo_content.name}"
#   filename = var.filename
# }

resource "random_pet" "pet-name" {
  prefix = tolist(var.prefix)[2] # There is a function called tolist
  length = var.length
  separator = var.separator

}


resource "local_file" "local-file" {
  content  = "DE-Team-${var.aws_bucket_name}"
  filename = "secretkeyfile"
}