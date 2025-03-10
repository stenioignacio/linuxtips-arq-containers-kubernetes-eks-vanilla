resource "aws_secretsmanager_secret" "test" {
  name = "chip-teste"
}

resource "aws_secretsmanager_secret_version" "test" {
  secret_id     = aws_secretsmanager_secret.test.id
  secret_string = "BAR"
}

resource "aws_secretsmanager_secret" "test_json" {
  name = "chip-teste-json"
}

resource "aws_secretsmanager_secret_version" "test_json" {
  secret_id = aws_secretsmanager_secret.test_json.id
  secret_string = jsonencode({
    foo      = "BAR",
    username = "admin",
    password = "abc123"
  })
}
