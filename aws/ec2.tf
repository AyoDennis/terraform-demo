# Create Security Group

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# EC2 

# Create a private key
# resource "tls_private_key" "launchpad_key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# Upload Key Pair
# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = tls_private_key.launchpad_key.public_key_openssh
# }


# # Saving private key locally
# resource "local_sensitive_file" "private_key_local" {
#   content  = tls_private_key.launchpad_key.private_key_pem
#   filename = "launchpad-key.pem"
#   file_permission = "400"
# }


data "aws_key_pair" "deployer" {
  key_name           = "dec-key-pair"
  include_public_key = true
}



# Create ec2 instance
resource "aws_instance" "ec2_instance" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet_1.id
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  key_name = data.aws_key_pair.deployer.key_name
  associate_public_ip_address = true


  tags = merge(local.common_tags, 
  {
    Name = "${var.project_name}-ec2"
  })
}
