output "token" {
  value = jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)["pagerduty_token"]
}