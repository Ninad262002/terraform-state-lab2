output "state_bucket_name" {
  description = "Backend bucket name for storing terraform state"
  value       = aws_s3_bucket.tfstate.id
}