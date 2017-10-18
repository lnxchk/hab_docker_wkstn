#
# Cookbook:: hab_docker_wkstn
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
include_recipe 'hab_docker_wkstn::user'
include_recipe 'hab_docker_wkstn::ssh'
include_recipe 'git::default'

docker_installation 'default' do
  action :create
end

docker_service 'default' do
  action [:create, :start]
end

hab_install 'install habitat'

user 'hab'
group 'hab' do
  members 'hab'
  append true
end
