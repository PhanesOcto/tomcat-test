#
# Cookbook Name:: tomcat_test
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
tcuser = node['tomcat_test']['user']
tcgroup = node['tomcat_test']['group']
webapps_dir = node['tomcat_test']['webapps_dir']
Side = "B"


remote_file "#{webapps_dir}/sampleB.war" do
    source "https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war"
    owner "#{tcuser}"
    group "#{tcgroup}"
    mode "0644"
    action :create
  end
