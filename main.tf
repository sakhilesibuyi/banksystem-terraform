terraform {
  required_providers{
      aws = {
          source = "hashicorp/aws"
          version = "~> 4.16"
      }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-2"
  
}
resource "aws_instance" "ec2_instance" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.micro"
    tags = {
        name ="ExampleEC2Instance"
    }
  
}