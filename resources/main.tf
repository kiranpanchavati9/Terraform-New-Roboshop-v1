resource "aws_instance" "vm_creation" {
  ami           = "ami-076d128fb049922d4"
  instance_type = "t3.small"
  security_group_id = "Terraform-Allow-All"
  tags = {
    Name = "TestMachine"
  }
}