#
# Cookbook Name:: ecs-gpu
# Recipe:: default
#
# Copyright (C) 2016 Brad Folkens
#
# All rights reserved - Do Not Redistribute
#

service 'docker' do
	supports :status => true
  action :start
end

package 'kernel-devel'

execute 'Download NVIDIA drivers' do
	cwd '/tmp'
	command "wget http://us.download.nvidia.com/XFree86/Linux-#{node[:nvidia][:arch]}/#{node[:nvidia][:version]}/NVIDIA-Linux-#{node[:nvidia][:arch]}-#{node[:nvidia][:version]}.run"
	creates "NVIDIA-Linux-#{node[:nvidia][:arch]}-#{node[:nvidia][:version]}.run"
end

execute 'Run NVIDIA installer' do
	cwd '/tmp'
	command "/bin/bash ./NVIDIA-Linux-#{node[:nvidia][:arch]}-#{node[:nvidia][:version]}.run --silent"
end

