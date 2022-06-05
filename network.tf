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
    cidr_block        = web1_cidr_range
    availability_zone = web1_az

    tags = {
      "Name"          = "web1.tf"
    }
}
# lets create a web2 subnet
resource "aws_subnet" "web2" {
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = web2_cidr_range
    availability_zone = web2_az

    tags = {
      "Name"          = "web2.tf"
    }
}

# lets create a db1 subnet
resource "aws_subnet" "db1" {
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = db1_cidr_range
    availability_zone = db1_az

    tags = {
      "Name"          = "db1.tf"
    }
}
# lets create a db2 subnet
resource "aws_subnet" "db22" {
    vpc_id            = aws_vpc.myvpc.id
    cidr_block        = db2_cidr_range
    availability_zone = db2_az

    tags = {
      "Name"          = "db2.tf"
    }
}
