#
# Cookbook Name:: vs_code
# Attributes:: default
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

# d/l urls are just redirect to full urls
# http://code.visualstudio.com/Download/?dv=win
# http://code.visualstudio.com/Download/?dv=osx
# http://code.visualstudio.com/Download/?dv=linux64
# http://code.visualstudio.com/Download/?dv=linux64_rpm
# http://code.visualstudio.com/Download/?dv=linux32
# http://code.visualstudio.com/Download/?dv=linux32_rpm

# latest release URLs
default['vs_code']['source_url'] = value_for_platform_family(
  'mac_os_x' => 'http://code.visualstudio.com/Download/?dv=osx',
  'windows'  => 'https://az764295.vo.msecnd.net/stable/fa6d0f03813dfb9df4589c30121e9fcffa8a8ec8/VSCodeSetup-stable.exe',
  'debian'   => 'https://az764295.vo.msecnd.net/stable/fa6d0f03813dfb9df4589c30121e9fcffa8a8ec8/vscode-amd64.deb',
  'rhel'     => 'http://code.visualstudio.com/Download/?dv=linux64_rpm'
)
