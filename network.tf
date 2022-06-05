# lets define the resource for the vpc
resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr_range
    tags = {
        "name"= "from-tf"
    }
  
}
# lets create a web1 subnet
resource "aws_subnet" "web1" {
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = "192.168.0.0/24"
    availability_zone = "ap-south-1a"

    tags = {
      "Name"          = "web1.tf"
    }
}
# lets create a web2 subnet
resource "aws_subnet" "web2" {
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = "192.168.1.0/24"
    availability_zone = "ap-south-1b"

    tags = {
      "Name"          = "web2.tf"
    }
}

# lets create a db1 subnet
resource "aws_subnet" "db1" {
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = "192.168.2.0/24"
    availability_zone = "ap-south-1a"

    tags = {
      "Name"          = "db1.tf"
    }
}
# lets create a db2 subnet
resource "aws_subnet" "db22" {
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = "192.168.3.0/24"
    availability_zone = "ap-south-1b"

    tags = {
      "Name"          = "db2.tf"
    }
}
