data "aws_route53_zone" "primary" {
  name = var.domain_name
}

resource "aws_route53_record" "top10" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name = var.url
  type =  "A"
  alias {
    name = aws_s3_bucket_website_configuration.site.website_domain
    zone_id = aws_s3_bucket.site.hosted_zone_id
    evaluate_target_health = false
  }
}