provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = "my-ec2-instance"

  instance_type = "t2.micro"
  ami           = "ami-02b60b5095d1e5227" # Replace with your desired AMI
  key_name      = "ec2.pem"       # Replace with your key pair name
  subnet_id     = "subnet-vpc-0bcd5417d45a7e7cc" # Replace with your subnet ID
  vpc_security_group_ids = ["launch-wizard-2"] # Replace with your security group IDs
  tags = {
    Name = "MyEC2Instance"
  }
}
