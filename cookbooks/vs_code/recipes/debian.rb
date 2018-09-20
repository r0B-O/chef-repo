#
# Cookbook Name:: vs_code
# Recipe:: debian
#
# Copyright (c) 2016 Sean Escriva
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe 'apt'
include_recipe 'git'

vscode_deb = File.join(Chef::Config[:file_cache_path], 'vscode-amd64.deb')

remote_file vscode_deb do
  source node['vs_code']['source_url']
  action :create
end

package 'visual-studio-code' do
  provider Chef::Provider::Package::Dpkg
  source vscode_deb
  action :install
end
