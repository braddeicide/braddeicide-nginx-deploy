# -*- mode: ruby -*-
# vi: set ft=ruby :

# so apt-get can find packages
updates = <<EOF
  apt-get update
EOF

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provision 'shell', inline: updates
  config.vm.define :nginx do |nginx_config|
    nginx_config.vm.host_name = "nginx01.test.net"
    #nginx_config.vm.box_url   = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
    #nginx_config.vm.box       = "centos-65-x64-virtualbox-puppet.box"
    nginx_config.vm.box        = "ubuntu-12-04-x64-virtualbox.box"
    nginx_config.vm.network "forwarded_port", guest: 8000, host: 8000
    config.vm.provision :puppet do |puppet|
      puppet.manifests_path    = "manifests"
      puppet.manifest_file     = "site.pp"
      puppet.module_path       = "modules"
    end
  end
end
