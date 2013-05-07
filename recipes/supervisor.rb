require_recipe "supervisor"

supervisor_service "remote_syslog" do
  stdout_logfile "/var/log/supervisor/remote_syslog-stdout.log"
  stderr_logfile "/var/log/supervisor/remote_syslog-stderr.log"
  command "remote_syslog -c #{node[:papertrail][:config_path]}"\
        + (node[:papertrail][:tls] ? " --tls" : " --tcp")\
        + (node[:papertrail][:daemonize] ? "" : " --no-detach")
end

