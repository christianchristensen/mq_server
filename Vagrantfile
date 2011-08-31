Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "lucid32b"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  config.vm.network "33.33.33.10"

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  config.vm.share_folder "v-root", "/srv", "srv", :nfs => true
  config.vm.share_folder "v-apt", "/var/cache/apt", "~/temp/vagrant_aptcache/apt", :nfs => true

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.cookbooks_path = "cookbooks"
    # chef.data_bags_path = "data_bags"
    chef.roles_path = "roles"

    chef.add_role "base"
    # chef.add_role "vagrant"
    chef.add_role "dev-env"
    chef.add_role "mq_server"

#    chef.json = {
#    }
  end
end
