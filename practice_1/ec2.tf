resource "aws_instance" "public_instance" {
    ami = "ami-071226ecf16aa7d96"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet.id
}