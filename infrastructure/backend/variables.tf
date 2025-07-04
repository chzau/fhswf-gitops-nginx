variable "bucket_name" {
  description = "Name des S3-Buckets für den Terraform State"
  type        = string
}

variable "dynamodb_table_name" {
  description = "Name der DynamoDB-Tabelle für State Locking"
  type        = string
}

variable "tags" {
  description = "Tags für S3 und DynamoDB"
  type        = map(string)
  default     = {}
}
