require 'rubygems'
require 'bundler'

Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

# pull in the helpers and controllers
Dir.glob('./app/{services,controllers}/*.rb').each { |file| require file }
