resource "aws_ssm_parameter" "teste" {
  name  = "/Parameter/chip-teste-parameter"
  type  = "String"
  value = "Vim do parameter store"
}
