Create a new ec2 instance
-------------------------


```bash
terraform apply
ssh -i private_key.pem ubuntu@$(cat ip_address.txt)
```