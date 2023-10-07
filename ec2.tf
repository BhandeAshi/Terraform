resource "aws_instance" "my-ec2" {
  ami           = var.ec2_ami
  instance_type = var.ec2-type  

  tags = {
    Name = var.ec2-log
  }
}