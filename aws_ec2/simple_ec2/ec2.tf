### cerating a simple ec2 instance by using a variables

resource "aws_instance" "first_ec2" {
  ami                    = var.ami                          
  instance_type          = var.instance_type
  availability_zone      = var.availability_zone
  tags = {
    Name = var.env
  }
}
//  This instance will grab a default VPC and subnet
