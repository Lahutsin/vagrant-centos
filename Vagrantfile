load './config.rb'

Vagrant.configure("2") do |config|
  config.vm.box = $name_box

  config.vm.define "#{$master_name}" do |master|
    master.vm.hostname = "#{$master_name}"
    master.vm.network "private_network", ip: "#{$first_address}.#{$ip_first_end}"
    $ip_first_end += $ip_steper
    master.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "#{$master_memory}"]
      vb.customize ["modifyvm", :id, "--cpus", "#{$master_cpu}"]
    end
  end

  (1..$node_count).each do |loop|
    config.vm.define "#{$node_name}#{loop}" do |node|
      node.vm.hostname = "#{$node_name}#{loop}"
      node.vm.network "private_network", ip: "#{$first_address}.#{$ip_first_end}"
      $ip_first_end += $ip_steper
      node.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", $node_memory / $node_count]
        vb.customize ["modifyvm", :id, "--cpus", $node_cpu / $node_count]
      end
    end
    config.vm.provision :shell, :path => "bootstrap.sh"
  end
end

