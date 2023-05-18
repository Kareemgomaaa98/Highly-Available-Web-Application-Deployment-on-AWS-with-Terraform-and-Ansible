#Create Key pair to connect using ssh
#Public key will be stored in aws managment consoule in key pairs secion
resource "aws_key_pair" "New_Key" {
  key_name   = "New_Key"
  public_key = tls_private_key.rsa.public_key_openssh
}

# RSA key of size 4096 bits
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
#Private key will be stored in your machine under the name of New_Key
resource "local_file" "New_Key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "New_key"
}
