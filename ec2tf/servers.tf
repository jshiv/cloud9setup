
provider "aws" {
  region     = "${var.region}"
}



resource "local_file" "public_ip" {
    content     = "${aws_instance.web.public_ip}"
    filename = "${path.module}/ip_address.txt"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.generated_key.key_name}"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
  tags {
    Name = "HelloWorld"
  }
  
  

}

