resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.example.public_key_openssh}"
}

output "private_key" {
  value = "${tls_private_key.example.private_key_pem}"
}
  
resource "local_file" "private_key_pem" {
    content     = "${tls_private_key.example.private_key_pem}"
    filename = "${path.module}/private_key.pem"
    
  provisioner "local-exec" {
    command = "chmod 600 ${local_file.private_key_pem.filename}"
  }
}