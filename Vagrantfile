Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/sync", "1"]
  end

  config.vm.box = "dduportal/boot2docker"

  # use rsync to keep host in sync with guest VM
  config.vm.synced_folder ".", "/sync", type: "rsync", 
    rsync__exclude: [
      "**.git/", "**node_modules/", 
      "**typings/", "**.idea/", 
      "**.vscode/", "**.tmp/", 
      "**dist/", "**bower_components/", 
      "**jspm_packages/", "**.sass-cache/"], 
    rsync__args: ["--verbose", "--archive", "-z", "--copy-links"] 

  # forward ports
  config.vm.network :forwarded_port, guest: 80, host: 9000
  config.vm.network :forwarded_port, guest: 443, host: 9001
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 3001, host: 3001
  config.vm.network :forwarded_port, guest: 8080, host: 8080
end