variable "bucket_name" {
  description = "S3 bucket ka poora naam"
  type        = string
}

variable "tags" {
  description = "Bucket par lagne wale tags"
  type        = map(string)
  default     = {}
}