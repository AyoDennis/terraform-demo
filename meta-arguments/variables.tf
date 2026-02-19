variable "content" {
  type        = string
  description = "try to explain it in quotes"
  default     = "This is us trying meta arguments"
}

variable "filename" {
  type        = list(string)
  description = "try to explain it in quotes"
  default     = ["dec1", "dec2", "dec3", "jesuniyi", "yussuf"]
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
