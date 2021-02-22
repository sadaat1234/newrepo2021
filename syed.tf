provider "aws" {
	region = "us-east-1"
	access_key = "AKIAVTW4H43CIP4LHKFL"
	secret_key = "k7+uZA5p5OT27j6i93bK6sVOGzV3bObdxXBkqJ6u"
}
resource "aws_s3_bucket" "ssbucket" {
	bucket = "shirazbucket"
	acl = "private"
}
resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}
