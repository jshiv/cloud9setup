#!/bin/bash
mkdir $HOME/.local && mkdir $HOME/.local/bin
wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
unzip terraform_0.11.11_linux_amd64.zip -d $HOME/.local/bin
rm terraform_0.11.11_linux_amd64.zip
source ~/.bash_profile
