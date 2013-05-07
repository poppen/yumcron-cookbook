#
# Cookbook Name:: yum-cron
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['platform_family'] == 'rhel'
  package 'yum-cron' do
    action :install
  end
end

service 'yum-cron' do
  service_name 'yum-cron'
  if node['platform_family'] == 'rhel'
    supports :restart => true, :reload => true, :status => true
  end
  action [:enable, :start]
end
