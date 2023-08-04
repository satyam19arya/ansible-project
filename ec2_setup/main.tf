resource "aws_instance" "master" {
  ami                    = var.AMI
  instance_type          = var.INSTANCE_TYPE
  key_name               = var.KEY_NAME
  vpc_security_group_ids = [var.SECURITY_GROUP_ID]

  tags = {
    Name = "ansible master"
  }
}

resource "aws_instance" "servers" {
  count                  = length(var.instance_names)
  ami                    = var.AMI
  instance_type          = var.INSTANCE_TYPE
  key_name               = var.KEY_NAME
  vpc_security_group_ids = [var.SECURITY_GROUP_ID]

  tags = {
    Name = var.instance_names[count.index]
  }
}