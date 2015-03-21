#
# Cookbook Name:: tomcat_test
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
tcuser = node['tomcat_test']['user']
tcgroup = node['tomcat_test']['group']
#webapps_dir = node['tomcat_test']['webapps_dir']
Side = "A"

case node['tomcat_test']['webapps']['dir']
when '/opt/apps/tomcat/A/tomcatA-1/apache-tomcat-7.0.27/webapps'
	include_attribute 'default.rb'
# else include_attribute 'ABdeploy.rb'
webapps_dir = node['tomcat_test']['webapps']['dir']
end

directory "/opt/apps/tomcat/A/tomcatA-1/apache-tomcat-7.0.27/webapps" do
	recursive true
	action :delete
end

# remote_file "#{webapps_dir}/sampleA1.war" do
#     source "https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war"
#     owner "#{tcuser}"
#     group "#{tcgroup}"
#     mode "0644"
#     action :create
 # end
#/opt/apps/tomcat/B/tomcatA-1/apache-tomcat-7.0.27/webapps


#node['side']['status'] = {'A' => 'Dark', 'B' => 'Lit'}