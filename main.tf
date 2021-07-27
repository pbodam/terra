provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "ganesh" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "Hari-Ganesh"
    Env = "prod"

  }
}

output "myawsserver-ip" {
  value = aws_instance.ganesh.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.ganesh.private_ip
}
