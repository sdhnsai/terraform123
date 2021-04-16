/*provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAWS4H3H53LSOGVUM3"
  secret_key = "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"
}
*/
resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "mys3" {
  bucket = "anikas3"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3.bucket_domain_name
}

