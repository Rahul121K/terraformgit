resource "aws_s3_bucket" "bucket23" {
	bucket = "rahul-first-st-bucket"
}

resource "aws_s3_bucket_acl" "rahul_bucket_acl" {
bucket = aws_s3_bucket.bucket23.id
acl = "private"
}

provider "aws" {
    access_key=var.accesskey
    secret_key=var.secretkey
  region = "eu-west-1"
}

variable "accesskey"{
    default="AKIAZTIMJ7JHDAJQWHUB"

}

variable "secretkey"{

    default="DR1KGT+eMQ+7oVcAMcSIM5/ZsYJ8vLbuf23mG6Dt"
}
