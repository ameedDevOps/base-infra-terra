resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}

resource "aws_ssm_parameter" "key_pair" {
  name  = var.key_pair_parameter_name
  type  = "SecureString"
  value = tls_private_key.example.private_key_pem
}
