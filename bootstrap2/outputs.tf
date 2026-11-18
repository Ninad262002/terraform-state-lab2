output "state_bucket_name" {
  description = "Backend bucket name for storing terraform state"
  value       = aws_s3_bucket.tfstate.id
}

output "github_plan_role_arn" {
  description = "Workflow mein use hoga (Task 4.3)"
  value       = aws_iam_role.github_plan.arn
}