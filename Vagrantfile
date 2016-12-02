# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.provider :virtualbox do |vb|
     vb.memory = 4024
     vb.gui = true
     vb.name = "Ubuntu 16.04 64-bit"
    
     # modifyvm
     vb.customize [
        "modifyvm", :id, 
        "--accelerate3d", "on",
        "--vram", "256",
     ]   

     # Add a DVD drive.
     vb.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "1", "--device", "0", "--type", "dvddrive", "--medium", "emptydrive"]    
     vb.customize ["modifyvm", :id, "--boot1", "disk", "--boot2", "dvd"]

     vb.customize "post-boot", [
        "controlvm", :id, 
        "setvideomodehint", "1920", "1080", "32",
     ]   

     vb.customize "post-boot", [
        "controlvm", :id, 
        "clipboard", "bidirectional",
     ]   

  end

  # Install essentials   
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt -y update

    sudo apt -y install linux-headers-generic build-essential dkms vim git unzip zsh \
                        virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 \
                        python-pip

  SHELL

  # Install Zeal doc browser
  config.vm.provision "shell", inline: <<-SHELL
    sudo add-apt-repository ppa:zeal-developers/ppa
    sudo apt-get update
    sudo apt-get install zeal

  SHELL

  config.vm.provision "docker",
    images: ["ubuntu", "centos"]

end
