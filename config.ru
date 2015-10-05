# config.ru
require "./config/environment"

# map the controllers to routes
map('/cards') { run CardsController }
map('/dice') { run DiceController }
map('/') { run ApplicationController }
