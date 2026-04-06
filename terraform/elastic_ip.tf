provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example" {
  ami           = "ami-0c5159......" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

# create an Elastic IP
resource "aws_eip" "example" { 
  domain = vpc
}

# Associate Elastic IP with EC2
resource "aws_eip_association" "example" {
  instance_id   = aws_instance.example.id
  allocation_id = aws_eip.example.id
}
