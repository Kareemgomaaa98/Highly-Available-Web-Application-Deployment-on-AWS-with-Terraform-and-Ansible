resource "aws_instance" "public1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.network.public1_id
  vpc_security_group_ids = [module.network.security_group_id]
  key_name               = aws_key_pair.TF_Key.key_name            # Adding key pair

  tags = {
    Name = "ter_ec2_1"
  }
}

resource "aws_instance" "public2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.network.public2_id
  vpc_security_group_ids = [module.network.security_group_id]
  key_name               = aws_key_pair.TF_Key.key_name           # Adding key pair

  tags = {
    Name = "ter_ec2_2"
  }
}
