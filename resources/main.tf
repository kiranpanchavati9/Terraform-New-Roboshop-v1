resource "aws_instance" "vm_creation" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fcfe62979bdd0bf1"]
  tags = {
    Name = "TestMachine"
  }
}