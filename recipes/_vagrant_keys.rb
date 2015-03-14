directory "/root/.ssh" do
  owner 'root'
  group 'root'
  mode '0600'
end

cookbook_file "/root/.ssh/id_rsa" do
  source "vagrant"
  mode "0600"
end

cookbook_file "/root/.ssh/id_rsa.pub" do
  source "vagrant.pub"
  mode "0600"
end

cookbook_file "/root/.ssh/authorized_keys2" do
  source "vagrant.pub"
  mode "0600"
end
