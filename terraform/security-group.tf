resource "aws_security_group" "http_server_sg_tf" {
  name   = "http_server_sg_tf"
  vpc_id = aws_default_vpc.default.id
  tags = {
    name = "http_server_sg_tf"
  }
}

resource "aws_security_group_rule" "http_ingress" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.http_server_sg_tf.id
}

resource "aws_security_group_rule" "ssh_ingres" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.http_server_sg_tf.id
}

resource "aws_security_group_rule" "app_port_ingress" {
  type              = "ingress"
  from_port         = 3000
  to_port           = 3000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.http_server_sg_tf.id
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.http_server_sg_tf.id
}