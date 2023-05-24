provider "aws" {
  region     = var.region
  }

#create EC2 instance
resource "aws_instance" "web" {
  ami             = "ami-04e601abe3e1a910f" 
  instance_type   = var.instance_type
  key_name        = var.instance_key

  tags = {
    Name = "App-target"
  }
}
