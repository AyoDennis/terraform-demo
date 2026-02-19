variable "content" {
  type        = string
  description = "try to explain it in quotes"
  default     = "This is us trying meta arguments"
}

# variable "filename" {
#   type        = list(string)
#   description = "try to explain it in quotes"
#   default     = ["dec2", "dec3", "dec4", "dec5"]
# }


# # Convert list variable above to set
# variable "filename" {
#   type        = set(string)
#   description = "try to explain it in quotes"
#   default     = ["dec1", "dec2", "dec3", "dec4", "dec5"]
# }

# Using list variable, but set in main.tf
variable "filename" {
  type        = list(string)
  description = "try to explain it in quotes"
  default     = ["dec2", "dec3", "dec4", "dec5"]
}




# variable "prefix" {
#   type        = string
#   description = "this is the prefix of our pet name"
#   default     = "Mr"
# }

# variable "length" {
#   type        = number
#   description = "this is the length of our pet name"
#   default     = 1
# }

# variable "separator" {
#   type        = string
#   description = "this is the separator that is used for our pet title"
#   default     = ","
# }
