resource "aws_eip" "eip" {
  vpc      = true
  instance = aws_instance.modulo.id
  tags = {
    Name = "${var.project_name}-${var.environment}-eip"
        }
}

