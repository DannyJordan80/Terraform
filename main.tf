resource "aws_instance" "example" {
  ami = "ami-0eff4f2497a2ce392"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Welcome!\nTesting Terraform deployment." > index.html
              nohup busybox httpd -f -p ${var.server_port} &
              EOF
  tags = {
    Name = "terraform_example"
  }
}
