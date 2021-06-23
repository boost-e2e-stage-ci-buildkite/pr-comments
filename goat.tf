
# Goat.tf version 0.7128665466286228
resource "aws_s3_bucket" "flowbucket" {
bucket        = "${local.resource_prefix.value}-flowlogs"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs"
Environment = local.resource_prefix.value
}
logging {
target_bucket = "${aws_s3_bucket.logs.id}"
target_prefix = "log/flowbucket"
}
}
resource "aws_s3_bucket" "flowbucket-2" {
bucket        = "${local.resource_prefix.value}-flowlogs-2"
acl           = "public-read"
force_destroy = true
tags = {
Name        = "${local.resource_prefix.value}-flowlogs-2"
Environment = local.resource_prefix.value
}
logging {
target_bucket = "${aws_s3_bucket.logs.id}"
target_prefix = "log/flowbucket"
}
}
