provider "aws" {
   region     = "us-east-2"
   access_key = ""
   secret_key = ""
   
}

resource "aws_instance" "ec2_example" {

    ami = "ami-0b614a5d911900a9b"  
    instance_type = "t2.micro" 
    key_name= "test"
    vpc_security_group_ids = [
      "sg-07ab06a4453c78496", ]
}

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = ""
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
  }
  ]
}
