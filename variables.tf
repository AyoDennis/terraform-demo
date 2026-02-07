variable "content" {
  type        = string
  description = "the content we want in our file"
  default     = "This will be our first document"
}


variable "filename" {
  type        = string
  description = "this is the direct path to our file"
  default     = "./dec_launchpad.txt"
}


# variable "prefix" {
#   type        = string
#   description = "this is the prefix of our pet name"
#   default     = "Mr"
# }

variable "length" {
  type        = number
  description = "this is the length of our pet name"
  default     = 1
}

variable "separator" {
  type        = string
  description = "this is the separator that is used for our pet title"
  default     = "."
}

# variable "prefix" {
#   type        = string
#   description = "this is the prefix of our pet name"
#   default     =  "Miss"
# }


# variable "content" {
#   type        = map(string)
#   description = "the content we want in our file"
#   default     = {
#     content1 = "This is the first content option in our map variable"
#     content2 = "This is the second content option in our map variable"
#     content3 = "This is the third content option in our map variable"
#   }
# }


# variable "prefix" {
#   type        = set(string)
#   description = "this is the prefix of our pet name"
#   default     =  ["Mr", "Mrs", "Miss", "Lady", "Miss"]
# }

variable "prefix" {
  type        = set(string)
  description = "this is the prefix of our pet name"
  default     =  ["Mr", "Mrs", "Miss", "Lady", "Miss"]
}

# Tuple
# variable "content" {
#   type        = tuple([string, bool, number])
#   description = "the content we want in our file"
#   default     = ["vpc-staging", true, 9]
# }


variable "ayo_content" {
  type        = object({
    name = string
    colour = string
    age = number
    food = list(string)
    likes_apc = bool
  })
  description = "the content we want in our file"
  default     = {
    name = "Ayodeji Dennis Ajayi"
    colour = "white"
    age = 12
    food = ["Chickwizz", "Jollof"]
    likes_apc = false
  }
}

variable "aws_access_key" {
    type = string
    description = "aws access key"
    sensitive = true
  
}

variable "aws_bucket_name" {
    type = string
    description = "our bucket name"
    sensitive = true
  
}
