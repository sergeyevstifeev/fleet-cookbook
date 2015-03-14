package 'tar'

ark 'fleet' do
  has_binaries ['fleetctl', 'fleetd']
  url "https://github.com/coreos/fleet/releases/download/v#{node[:fleet][:version]}/fleet-v#{node[:fleet][:version]}-linux-amd64.tar.gz"
  action :install
end

directory "/etc/fleet" do
  owner node[:fleet][:user]
  group node[:fleet][:user]
  mode '0600'
end

template '/etc/fleet/fleet.conf' do
  source 'fleet.conf.erb'
  owner node[:fleet][:user]
  group node[:fleet][:user]
  mode 0644
end

# Init system specific recipe
# TODO: expand to support other init systems
include_recipe 'fleet::_add_systemd_init_file'

include_recipe 'fleet::_vagrant_keys' if node[:fleet][:use_vagrant_keys]
