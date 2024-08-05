resource "aws_instance" "private" {
  #count         = length(var.private_subnet_cidrs) * 2  # 2 instances per private subnet
  count         = length(var.private_subnet_cidrs)
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = element(aws_subnet.private.*.id, count.index / 1)

  tags = {
    Name = "private-instance-${count.index + 1}"
  }

  key_name          = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
}
