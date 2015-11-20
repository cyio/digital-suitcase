VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu"
  config.vm.network "public_network"
  # config.vm.network "private_network", ip: "192.168.2.0"
  config.vm.network "forwarded_port", guest: 80, host: 1024
  config.vm.synced_folder "d:/cyio/", "/home/vagrant/", :type => "nfs"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provision "shell", path: "install/init.sh"
  config.vm.provision "shell", path: "install/git.sh"
  config.vm.provision "shell", path: "install/ohMyZ.sh", args: ["/home/vagrant", "vagrant"]
  config.vm.provision "shell", path: "install/ohMyZ.sh", args: ["/root", "root"]
  # config.vm.provision "shell", path: "install/nginx.sh"
  # config.vm.provision "shell", path: "install/mysql.sh", args: ["root"]
  # config.vm.provision "shell", path: "install/php-fpm.sh"
  # config.vm.provision "shell", path: "install/php-cli.sh"
  config.vm.provision "shell", path: "install/nodejs.sh"
  config.vm.provision "shell", path: "install/npm.sh"
  config.vm.provision "shell", path: "install/bower.sh"
  config.vm.provision "shell", path: "install/grunt.sh"
  config.vm.provision "shell", path: "install/gulp.sh"
  config.vm.provision "shell", path: "install/neovim.sh"
  # config.vm.provision "shell", path: "install/composer.sh"
  # config.vm.provision "shell", path: "install/phpmyadmin.sh", args: ["root"]
  # config.vm.provision "shell", path: "install/elasticsearch.sh", args: ["1.3.1"]

  # config.vm.provision "file", source: "install_custom/vhost", destination: "/tmp/etc/nginx/sites-available/default", run: "always"
  config.vm.provision "shell", path: "install_custom/custom.sh", run: "always"  
  
  # You can add more custom provision script here

  config.vm.hostname = 'frontend.dev'

  config.vm.provider "virtualbox" do |v|
    v.memory = 312
    v.cpus = 2
  end
end
