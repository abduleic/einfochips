variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default     = {}
}

variable "versioning_enabled" {
  description = "Enable versioning"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Delete all objects when destroying bucket"
  type        = bool
  default     = false
}

variable "block_public_access" {
  description = "Block all public access"
  type        = bool
  default     = true
}

variable "enable_encryption" {
  description = "Enable SSE encryption"
  type        = bool
  default     = true
}
