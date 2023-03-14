provider "aws" {
  region     = "eu-central-1"
  }

resource "aws_instance" "myec2test" {
  ami           = "ami-0d1ddd83282187d18"  
  instance_type = "t2.micro"
  tags = {
    "Name" : "TestInstance"
  }
}
