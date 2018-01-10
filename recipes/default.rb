#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

  node.default['haproxy']['members'] =
  
  [{
    "hostname" => "ec2-54-146-48-69.compute-1.amazonaws.com",
    "ipaddress" => "54.146.48.69",
    "port" => 80,
    "ssl_port" => 80
  },
   {
    "hostname" => "ec2-52-206-230-214.compute-1.amazonaws.com",
    "ipaddress" => "52.206.230.214",
    "port" => 80,
    "ssl_port" => 80
  }]
  
  include_recipe 'haproxy::manual'