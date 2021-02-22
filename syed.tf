provider "aws" {
	region = "us-east-1"
	access_key = "AKIAVTW4H43CIP4LHKFL"
	secret_key = "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"
}
resource "aws_s3_bucket" "ssbucket" {
	bucket = "shirazbucket"
	acl = "private"
}
resource "aws_instance" "web" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  key_name = "syed"
}
