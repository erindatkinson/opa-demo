provider "aws" {
  region = "us-east-2"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.8.0"

  ami           = "ami-06f2f779464715dc5"
  instance_type = "t3.micro"
  name          = "demo-"
  subnet_id     = "subnet-06316a9489b961b9a"

  vpc_security_group_ids = [
    "sg-0a6e7c225102bd167",
  ]
}
