require 'rubygems'
require 'bundler'

Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

Bundler.require('./app/controllers/application_controller.rb')

# pull in the helpers and controllers
Dir.glob('./app/{services,controllers}/*.rb').each { |file| require file }
