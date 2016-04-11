#
# Cookbook Name:: new_relic_nginx
# Recipe:: default
#
# Copyright 2016, BQ
#
#
#Install new_relic_nginx agent
package 'nginx-nr-agent'
dir = node[:plugin][:dir]
conf = node[:new_relic_nginx][:config]

template "#{dir}/nginx-nr-agent.ini" do
  source 'nginx-nr-agent.ini.erb'
  mode   '0644'
  owner  'root'
  group  'root'
  variables({
    :license_key => conf[:license_key],
    :source_name => conf[:source_name],
    :status_url => conf[:status_url]
  })
end
#Start new_relic_nginx agen
bash 'start new_relic_agent' do
  user 'root'
  code <<-EOH
  service nginx-nr-agent start
  EOH
end
