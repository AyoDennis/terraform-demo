output "random_pet_id" {
  value       = random_pet.pet-name.id
  description = "the id of our random pet"
}

output "local_file_id" {
  value       = local_file.file.id
  description = "the id of our local file"
}