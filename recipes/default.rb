gem_package "remote_syslog"

template "#{node[:papertrail][:config_path]}" do
  source "config.yml.erb"
end
