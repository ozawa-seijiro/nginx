#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{nginx}.each do |pkg|
   package pkg do
     action :install
   end
 end

 template "nginx.conf" do
 	source "smart-maint.conf.erb"
 	action :create
 end