# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox"
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/jammy64"

  # Automatic box update checking
  config.vm.box_check_update = true

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Disable the default share of the current code directory. Doing this
  # provides improved isolation between the vagrant box and your host
  # by making sure your Vagrantfile isn't accessible to the vagrant box.
  # If you use this you may want to enable additional shared subfolders as
  # shown above.
  # config.vm.synced_folder ".", "/vagrant", disabled: true


  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    sudo apt-get install tree
    # npm i -g aws-cdk
  SHELL
  config.vm.provision "shell", inline: <<-SHELL
    echo "Installing AWS CLI"
    sudo apt install unzip
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
  SHELL
  config.vm.provision :shell, path: "bin/terraform_cli_install.sh"

#  config.vm.provision "terraform", inline: <<-SHELL
#    echo "Installing Terraform"
#    sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
#    wget -O- https://apt.releases.hashicorp.com/gpg | \
#    gpg --dearmor | \
#    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
#    gpg --no-default-keyring \
#    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
#    --fingerprint
#    # 798A EC65 4E5C 1542 8C8E  42EE AA16 FCBC A621 E701
#    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
#    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
#    sudo tee /etc/apt/sources.list.d/hashicorp.list
#    sudo apt update
#    sudo apt-get install terraform
#  SHELL


  # config.vm.provision :shell, path: "bin/aws_cli_install.sh"
  # AWS_CLI_AUTO_PROMPT: on-partial

  # config.vm.provision :shell, path: "bin/powershell_cli_install.sh"
end
