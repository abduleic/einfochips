output "bucket_id" {
  description = "Bucket ID"
  value       = aws_s3_bucket.s3_bucket.id
}

output "bucket_arn" {
  description = "Bucket ARN"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "bucket_domain_name" {
  description = "Bucket domain name"
  value       = aws_s3_bucket.s3_bucket.bucket_domain_name
}
