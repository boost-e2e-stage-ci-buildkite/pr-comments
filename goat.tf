
# Goat.tf version 0.956017671554316
resource "aws_s3_bucket" "flowbucket" {
bucket        = "${local.resource_prefix.value}-flowlogs"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs"
Environment = local.resource_prefix.value
}
}
