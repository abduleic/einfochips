module "s3" {
  source = "./s3"

  bucket_name         = var.bucket_name
  versioning_enabled  = var.versioning_enabled
  force_destroy       = var.force_destroy
  block_public_access = var.block_public_access
  enable_encryption   = var.enable_encryption
  tags                = var.tags
}
