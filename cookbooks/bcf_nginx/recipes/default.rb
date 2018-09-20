#
# Cookbook:: bcf_nginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package "httpd" 

service "httpd" do
	action [:enable, :start]
end

file '/var/www/html/index.html' do
	content "<h1>Hello, World!</h1>"
	action :create
	not_if { ::File.exists?("/var/www/html/index.html") }
end
