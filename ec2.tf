resource "aws_instance" "my_ec2" {
  ami = var.amazon_image
  instance_type = "t2.micro"

  tags = {
    name = "my_ec2"
  }
}


resource "aws_instance" "test_ec2" {
  ami = data.aws_ami.my_image.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.websg.id]

  tags = {
    name = "test_ec2"
  }
}
