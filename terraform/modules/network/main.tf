# Create a VPC
resource "aws_vpc" "this" {
    cidr_block              = var.vpc_cidr
    enable_dns_support      = true
    enable_dns_hostnames    = true

    tags = {
      Name = "${var.environment}-vpc"
    }
}

resource "aws_subnet" "this" {
  vpc_id                    = aws_vpc.this.id
  cidr_block                = var.subnet_cidr
  map_public_ip_on_launch   = true
  availability_zone         = var.availability_zone

  tags = {
    Name = "${var.environment}-subnet"
  }
}

resource "aws_security_group" "this" {
  name = "${var.environment}-sg"
  description = "Allow SSH and HTTP"
  vpc_id = aws_vpc.this.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.environment}-sg"
  }
}