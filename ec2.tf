resource "aws_instance" "modulo" {
  ami           = var.ami_id
  key_name = "virtual-machine"
  instance_type = var.instance_type
  user_data = file("userdata.txt")
  vpc_security_group_ids  = [
    aws_security_group.sg.id
  ]
  subnet_id = var.subnet_id
  tags = {
    Name = "${var.project_name}-${var.environment}-ec2"
  }
}
