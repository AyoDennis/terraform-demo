output "instance_public_ip" {
    description = "public ip of instance"
    value = aws_instance.ec2_instance.public_ip
}