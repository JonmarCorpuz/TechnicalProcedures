#
output "<output_block_id>" {
  description = "<output_description>"
  value       = aws_s3_bucket.<s3_bucket_resource_id>.bucket
  sensitive   = {true|false}
}

#
output "<output_block_id>" {
  description = "<output_description>"
  value       = aws_s3_bucket.<s3_bucket_resource_id>.website_endpoint
  sensitive   = {true|false}
}
