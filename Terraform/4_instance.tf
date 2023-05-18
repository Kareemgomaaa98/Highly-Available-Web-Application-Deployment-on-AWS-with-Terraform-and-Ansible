resource "aws_instance" "public1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.network.public1_id
  vpc_security_group_ids = [module.network.security_group_id]
  key_name               = aws_key_pair.New_Key.key_name            # Adding key pair

  tags = {
    Name = "ter_ec2_1"
  }

  provisioner "local-exec" {          # Saving puplic ip in txt file
    command = "echo '[web]' >> public_ips.txt && echo ${self.public_ip} >> public_ips.txt && echo '' >> public_ips.txt" 
  }
}

resource "aws_instance" "public2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.network.public2_id
  vpc_security_group_ids = [module.network.security_group_id]
  key_name               = aws_key_pair.New_Key.key_name            # Adding key pair

  tags = {
    Name = "ter_ec2_2"
  }

  provisioner "local-exec" {          # Saving puplic ip in txt file
    command = "echo '[web]' >> public_ips.txt && echo ${self.public_ip} >> public_ips.txt && echo '' >> public_ips.txt" 
  }
}

# Use a local-exec provisioner on the null_resource to concatenate the public_ips.txt files
resource "null_resource" "concatenate_public_ips" {
  provisioner "local-exec" {
    command = "cat public_ips.txt >> inventory.txt && rm public_ips.txt"
  }

  depends_on = [
    aws_instance.public1,
    aws_instance.public2,
  ]
}
