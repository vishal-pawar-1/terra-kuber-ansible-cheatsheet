resource "aws_instance" "<>any_instance_name>" {
  instance_type = var.instance_type
  key_name      = aws_key_pair.<key_name>.key_name
  ami = var.ami_id
  
  vpc_security_group_ids = [aws_security_group.<security_group_name>.id]
  subnet_id = var.subnet_id

  associate_public_ip_address = true
  
  user_data = file("${path.module}/<.sh_file-name>")

  root_block_device  {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
}