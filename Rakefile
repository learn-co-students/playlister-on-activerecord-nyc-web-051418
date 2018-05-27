require_relative 'config/environment.rb'
require "sinatra/activerecord/rake"

task :console do
  Pry.start
end

desc 'seed the database with some data'
  task :seed do
    require_relative './db/seeds.rb'
  end
