output "ec2_public_ip" {
    description = "Public IP for instance"
    value = aws_instance.public_instance.public_ip
}