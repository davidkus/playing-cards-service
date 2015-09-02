# config.ru
require 'sinatra/base'

# pull in the helpers and controllers
Dir.glob('./app/{services,controllers}/*.rb').each { |file| require file }

# map the controllers to routes
map('/cards') { run CardsController }
map('/dice') { run DiceController }
map('/') { run ApplicationController }
