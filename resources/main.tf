resource "aws_instance" "vm_creation" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = [aws_vpc_security_group_ingress_rule.allow-firewall-rule.security_group_id]
  tags = {
    Name = "TestMachine"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow-firewall-rule" {
  security_group_id = "sg-0fcfe62979bdd0bf1"  # quotes were missing
  ip_protocol       = "tcp"
}
