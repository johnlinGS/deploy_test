require 'rvm/capistrano'
require 'bundler/capistrano'

set :application, 'deploy_test'
set :rails_env, 'production'
set :domain, 'deploy_test@192.241.139.10'
set :deploy_to, "/home/deploy_test/#{application}"
set :use_sudo, true
set :rvm_ruby_string, 'ruby-2.3.0'

set :scm, :git
set :repository,  'https://github.com/johnlinGS/deploy_test.git'
set :branch, 'master'
set :deploy_via, :remote_cache
set :ssh_options, { :forward_agent => true }

role :web, domain
role :app, domain
role :db,  domain, :primary => true

namespace :deploy do
  desc 'Restart Pass'
  task :restart do
    run "echo 'Hey John!'"
  end
end
