resource "aws_key_pair" "dhk-key1" {
  key_name = "tf-key1"
  public_key = file("../../.ssh/id_rsa.pub")
}