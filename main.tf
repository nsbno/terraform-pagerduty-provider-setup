terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
}

/*
  Retrieve Secrets Manager Pagerduty token
*/

data "aws_secretsmanager_secret" "this" {
  arn = "arn:aws:secretsmanager:eu-west-1:727646359971:secret:terraform-pagerduty-service-vMxaaq"
}

data "aws_secretsmanager_secret_version" "secret_version" {
  secret_id = data.aws_secretsmanager_secret.this.id
}
