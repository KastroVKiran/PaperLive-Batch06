provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "myfirstinstance" {
    count = 2
    ami = "ami-0ecb62995f68bb549"
    instance_type = "t2.micro"
}
