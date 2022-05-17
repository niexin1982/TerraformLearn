resource "aws_instance" "sandbox" {
  count         = 1
  ami           = "ami-07d9583de36e83d10" # Ubuntu Server 18.04 LTS 
  instance_type = "t2.micro"

  tags = {
    Name = "${format("modified sandbox-%02d", count.index + 1)}"
  }
}