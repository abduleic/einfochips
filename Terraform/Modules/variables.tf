variable "bucket_name" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "versioning_enabled" {
  type = bool
}

variable "force_destroy" {
  type = bool
}

variable "block_public_access" {
  type = bool
}

variable "enable_encryption" {
  type = bool
}
