provider "aws" {
  region     = "eu-central-1"
  }

resource "aws_instance" "myec2test" {
  ami           = "ami-00874d747dde814fa"  
  instance_type = "t2.micro"
  tags = {
    "Name" : "TestInstance"
  }
}
