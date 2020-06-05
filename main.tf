resource "aws_instance" "example" {
  ami = "ami-0eff4f2497a2ce392"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform_example"
  }
}
