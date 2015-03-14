template '/etc/systemd/system/fleet.service' do
  source 'fleet.service.erb'
  mode 0644
  notifies :run, 'execute[systemd_reload_units]', :immediate
  notifies :restart, 'service[fleet]'
end

service 'fleet' do
  provider Chef::Provider::Service::Systemd
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end
