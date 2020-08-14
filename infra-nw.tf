#create VPC, Subnet, NACL, RT and SG
resource "aws_vpc" "tf_vpc"{
    cidr_block = "10.0.0.0/16"
    tags = {
        Name : "tf-vpc"
    }
    
}
resource "aws_security_group" "tf_sg"{
    name        = "tf-sg-eu-devops"
    description = "allows port 22 only"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["194.113.220.5/32"]
    }
     ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["194.113.220.5/32"]
    }
     egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["194.113.220.5/32"]
    }   

    tags = {
        "Terraform" = "true"
    }
}